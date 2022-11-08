.class Landroidx/slice/widget/RemoteInputView$1;
.super Ljava/lang/Object;
.source "RemoteInputView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/widget/RemoteInputView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/RemoteInputView;


# direct methods
.method constructor <init>(Landroidx/slice/widget/RemoteInputView;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/slice/widget/RemoteInputView;

    .line 101
    iput-object p1, p0, Landroidx/slice/widget/RemoteInputView$1;->this$0:Landroidx/slice/widget/RemoteInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 104
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_1

    const/4 v2, 0x6

    if-eq p2, v2, :cond_0

    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 108
    .local v2, "isSoftImeEvent":Z
    :goto_0
    if-eqz p3, :cond_2

    .line 109
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroidx/slice/widget/RemoteInputView;->isConfirmKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    .line 112
    .local v3, "isKeyboardEnterKey":Z
    :goto_1
    if-nez v2, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    .line 119
    :cond_3
    return v1

    .line 113
    :cond_4
    :goto_2
    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView$1;->this$0:Landroidx/slice/widget/RemoteInputView;

    iget-object v1, v1, Landroidx/slice/widget/RemoteInputView;->mEditText:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    invoke-virtual {v1}, Landroidx/slice/widget/RemoteInputView$RemoteEditText;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 114
    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView$1;->this$0:Landroidx/slice/widget/RemoteInputView;

    invoke-virtual {v1}, Landroidx/slice/widget/RemoteInputView;->sendRemoteInput()V

    .line 117
    :cond_5
    return v0
.end method
