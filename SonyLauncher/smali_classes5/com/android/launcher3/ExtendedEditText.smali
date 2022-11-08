.class public Lcom/android/launcher3/ExtendedEditText;
.super Landroid/widget/EditText;
.source "ExtendedEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;
    }
.end annotation


# instance fields
.field private mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

.field private mForceDisableSuggestions:Z

.field private mShowImeAfterFirstLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/ExtendedEditText;->mForceDisableSuggestions:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/ExtendedEditText;->mForceDisableSuggestions:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/ExtendedEditText;->mForceDisableSuggestions:Z

    .line 61
    return-void
.end method

.method private showSoftInput()Z
    .locals 3

    .line 111
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->requestFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 113
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 111
    :goto_0
    return v1
.end method


# virtual methods
.method public dispatchBackKey()V
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->hideKeyboard()V

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/ExtendedEditText;->mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0}, Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;->onBackKey()Z

    .line 121
    :cond_0
    return-void
.end method

.method public forceDisableSuggestions(Z)V
    .locals 0
    .param p1, "forceDisableSuggestions"    # Z

    .line 128
    iput-boolean p1, p0, Lcom/android/launcher3/ExtendedEditText;->mForceDisableSuggestions:Z

    .line 129
    return-void
.end method

.method public hideKeyboard()V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/UiThreadHelper;->hideKeyboardAsync(Lcom/android/launcher3/views/ActivityContext;Landroid/os/IBinder;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->clearFocus()V

    .line 108
    return-void
.end method

.method public isSuggestionsEnabled()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/android/launcher3/ExtendedEditText;->mForceDisableSuggestions:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/EditText;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$onLayout$0$com-android-launcher3-ExtendedEditText()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/android/launcher3/ExtendedEditText;->showSoftInput()Z

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/ExtendedEditText;->mShowImeAfterFirstLayout:Z

    .line 96
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 70
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->hideKeyboard()V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/ExtendedEditText;->mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v0}, Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;->onBackKey()Z

    move-result v0

    return v0

    .line 77
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 90
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 91
    iget-boolean v0, p0, Lcom/android/launcher3/ExtendedEditText;->mShowImeAfterFirstLayout:Z

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lcom/android/launcher3/ExtendedEditText$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/ExtendedEditText$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/ExtendedEditText;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ExtendedEditText;->post(Ljava/lang/Runnable;)Z

    .line 98
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_0
    return-void
.end method

.method public setOnBackKeyListener(Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

    .line 64
    iput-object p1, p0, Lcom/android/launcher3/ExtendedEditText;->mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

    .line 65
    return-void
.end method

.method public showKeyboard()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/android/launcher3/ExtendedEditText;->showSoftInput()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/ExtendedEditText;->mShowImeAfterFirstLayout:Z

    .line 103
    return-void
.end method
