.class public Lcom/android/launcher3/folder/FolderNameEditText;
.super Lcom/android/launcher3/ExtendedEditText;
.source "FolderNameEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/FolderNameEditText$FolderNameEditTextInputConnection;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FolderNameEditText"


# instance fields
.field private mEnteredCompose:Z


# direct methods
.method static bridge synthetic -$$Nest$fputmEnteredCompose(Lcom/android/launcher3/folder/FolderNameEditText;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderNameEditText;->mEnteredCompose:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/launcher3/ExtendedEditText;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderNameEditText;->mEnteredCompose:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/ExtendedEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderNameEditText;->mEnteredCompose:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/ExtendedEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderNameEditText;->mEnteredCompose:Z

    .line 55
    return-void
.end method


# virtual methods
.method public displayCompletions(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p1, "suggestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 70
    .local v0, "cnt":I
    new-array v1, v0, [Landroid/view/inputmethod/CompletionInfo;

    .line 71
    .local v1, "cInfo":[Landroid/view/inputmethod/CompletionInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 72
    new-instance v3, Landroid/view/inputmethod/CompletionInfo;

    int-to-long v4, v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-direct {v3, v4, v5, v2, v6}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    aput-object v3, v1, v2

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/android/launcher3/folder/FolderNameEditText$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/folder/FolderNameEditText$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/folder/FolderNameEditText;[Landroid/view/inputmethod/CompletionInfo;)V

    const-wide/16 v3, 0x28

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/launcher3/folder/FolderNameEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    return-void
.end method

.method synthetic lambda$displayCompletions$0$com-android-launcher3-folder-FolderNameEditText([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2
    .param p1, "cInfo"    # [Landroid/view/inputmethod/CompletionInfo;

    .line 77
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderNameEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 78
    invoke-virtual {v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 77
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 100
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderNameEditText;->setSelection(I)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderNameEditText;->mEnteredCompose:Z

    .line 103
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 59
    invoke-super {p0, p1}, Lcom/android/launcher3/ExtendedEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 60
    .local v0, "con":Landroid/view/inputmethod/InputConnection;
    new-instance v1, Lcom/android/launcher3/folder/FolderNameEditText$FolderNameEditTextInputConnection;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/launcher3/folder/FolderNameEditText$FolderNameEditTextInputConnection;-><init>(Lcom/android/launcher3/folder/FolderNameEditText;Landroid/view/inputmethod/InputConnection;Z)V

    .line 62
    .local v1, "connectionWrapper":Lcom/android/launcher3/folder/FolderNameEditText$FolderNameEditTextInputConnection;
    return-object v1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 87
    const-string v0, "unknown"

    .line 88
    .local v0, "reason":Ljava/lang/String;
    if-nez p2, :cond_0

    if-nez p4, :cond_0

    if-lez p3, :cond_0

    .line 89
    const-string v0, "suggestion was rejected"

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/folder/FolderNameEditText;->mEnteredCompose:Z

    .line 96
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/android/launcher3/ExtendedEditText;->reset()V

    .line 125
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderNameEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderNameEditText;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "nextFocus":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 131
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderNameEditText;->hideKeyboard()V

    .line 132
    return-void
.end method

.method protected setEnteredCompose(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderNameEditText;->mEnteredCompose:Z

    .line 107
    return-void
.end method
