.class public Landroidx/slice/widget/RemoteInputView;
.super Landroid/widget/LinearLayout;
.source "RemoteInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/RemoteInputView$RemoteEditText;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteInput"

.field public static final VIEW_TAG:Ljava/lang/Object;


# instance fields
.field private mAction:Landroidx/slice/SliceItem;

.field mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRemoteInput:Landroid/app/RemoteInput;

.field private mRemoteInputs:[Landroid/app/RemoteInput;

.field private mResetting:Z

.field private mRevealCx:I

.field private mRevealCy:I

.field private mRevealR:I

.field private mSendButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/slice/widget/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method private focus()V
    .locals 2

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RemoteInputView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setInnerFocusable(Z)V

    .line 221
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    iput-boolean v1, v0, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    .line 222
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setSelection(I)V

    .line 223
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->requestFocus()Z

    .line 224
    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView;->updateSendButton()V

    .line 225
    return-void
.end method

.method public static inflate(Landroid/content/Context;Landroid/view/ViewGroup;)Landroidx/slice/widget/RemoteInputView;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 164
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$layout;->abc_slice_remote_input:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/RemoteInputView;

    .line 166
    .local v0, "v":Landroidx/slice/widget/RemoteInputView;
    sget-object v1, Landroidx/slice/widget/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/RemoteInputView;->setTag(Ljava/lang/Object;)V

    .line 167
    return-object v0
.end method

.method public static final isConfirmKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 439
    sparse-switch p0, :sswitch_data_0

    .line 446
    const/4 v0, 0x0

    return v0

    .line 444
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method private reset()V
    .locals 3

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/widget/RemoteInputView;->mResetting:Z

    .line 230
    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 231
    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v1, v0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setEnabled(Z)V

    .line 232
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 234
    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView;->updateSendButton()V

    .line 235
    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView;->onDefocus()V

    .line 237
    iput-boolean v1, p0, Landroidx/slice/widget/RemoteInputView;->mResetting:Z

    .line 238
    return-void
.end method

.method private updateSendButton()V
    .locals 2

    .line 252
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 253
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 265
    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView;->updateSendButton()V

    .line 266
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 257
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 3

    .line 288
    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/slice/widget/RemoteInputView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {p0, v0, v1}, Landroidx/slice/widget/RemoteInputView;->removeDetachedView(Landroid/view/View;Z)V

    .line 293
    :goto_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->dispatchFinishTemporaryDetach()V

    .line 294
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 1

    .line 280
    invoke-super {p0}, Landroid/widget/LinearLayout;->dispatchStartTemporaryDetach()V

    .line 283
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RemoteInputView;->detachViewFromParent(Landroid/view/View;)V

    .line 284
    return-void
.end method

.method public focusAnimated()V
    .locals 4

    .line 209
    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget v0, p0, Landroidx/slice/widget/RemoteInputView;->mRevealCx:I

    iget v1, p0, Landroidx/slice/widget/RemoteInputView;->mRevealCy:I

    const/4 v2, 0x0

    iget v3, p0, Landroidx/slice/widget/RemoteInputView;->mRevealR:I

    int-to-float v3, v3

    invoke-static {p0, v0, v1, v2, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 212
    .local v0, "animator":Landroid/animation/Animator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 213
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 215
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView;->focus()V

    .line 216
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 172
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 173
    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView;->sendRemoteInput()V

    .line 175
    :cond_0
    return-void
.end method

.method onDefocus()V
    .locals 1

    .line 186
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RemoteInputView;->setVisibility(I)V

    .line 187
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 94
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 96
    sget v0, Landroidx/slice/view/R$id;->remote_input_progress:I

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RemoteInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 97
    sget v0, Landroidx/slice/view/R$id;->remote_input_send:I

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RemoteInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    .line 98
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RemoteInputView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    iput-object v1, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    .line 101
    new-instance v2, Landroidx/slice/widget/RemoteInputView$1;

    invoke-direct {v2, p0}, Landroidx/slice/widget/RemoteInputView$1;-><init>(Landroidx/slice/widget/RemoteInputView;)V

    invoke-virtual {v1, v2}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 122
    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v1, p0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v1, v0}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setInnerFocusable(Z)V

    .line 124
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    iput-object p0, v0, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mRemoteInputView:Landroidx/slice/widget/RemoteInputView;

    .line 125
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 242
    iget-boolean v0, p0, Landroidx/slice/widget/RemoteInputView;->mResetting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    if-ne p1, v0, :cond_0

    .line 246
    const/4 v0, 0x0

    return v0

    .line 248
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 261
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 179
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method sendRemoteInput()V
    .locals 6

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v0, "results":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView;->mRemoteInput:Landroid/app/RemoteInput;

    invoke-virtual {v1}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v2}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 131
    .local v1, "fillInIntent":Landroid/content/Intent;
    iget-object v2, p0, Landroidx/slice/widget/RemoteInputView;->mRemoteInputs:[Landroid/app/RemoteInput;

    invoke-static {v2, v1, v0}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 134
    iget-object v2, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setEnabled(Z)V

    .line 135
    iget-object v2, p0, Landroidx/slice/widget/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 136
    iget-object v2, p0, Landroidx/slice/widget/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 137
    iget-object v2, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    iput-boolean v3, v2, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    .line 150
    :try_start_0
    iget-object v2, p0, Landroidx/slice/widget/RemoteInputView;->mAction:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 151
    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView;->reset()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_0

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v4, "RemoteInput"

    const-string v5, "Unable to send remote input result"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    invoke-virtual {p0}, Landroidx/slice/widget/RemoteInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Failure sending pending intent for inline reply :("

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 155
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 156
    invoke-direct {p0}, Landroidx/slice/widget/RemoteInputView;->reset()V

    .line 158
    .end local v2    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method

.method public setAction(Landroidx/slice/SliceItem;)V
    .locals 0
    .param p1, "action"    # Landroidx/slice/SliceItem;

    .line 193
    iput-object p1, p0, Landroidx/slice/widget/RemoteInputView;->mAction:Landroidx/slice/SliceItem;

    .line 194
    return-void
.end method

.method public setRemoteInput([Landroid/app/RemoteInput;Landroid/app/RemoteInput;)V
    .locals 2
    .param p1, "remoteInputs"    # [Landroid/app/RemoteInput;
    .param p2, "remoteInput"    # Landroid/app/RemoteInput;

    .line 200
    iput-object p1, p0, Landroidx/slice/widget/RemoteInputView;->mRemoteInputs:[Landroid/app/RemoteInput;

    .line 201
    iput-object p2, p0, Landroidx/slice/widget/RemoteInputView;->mRemoteInput:Landroid/app/RemoteInput;

    .line 202
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {p2}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method

.method public setRevealParameters(III)V
    .locals 0
    .param p1, "cx"    # I
    .param p2, "cy"    # I
    .param p3, "r"    # I

    .line 273
    iput p1, p0, Landroidx/slice/widget/RemoteInputView;->mRevealCx:I

    .line 274
    iput p2, p0, Landroidx/slice/widget/RemoteInputView;->mRevealCy:I

    .line 275
    iput p3, p0, Landroidx/slice/widget/RemoteInputView;->mRevealR:I

    .line 276
    return-void
.end method
