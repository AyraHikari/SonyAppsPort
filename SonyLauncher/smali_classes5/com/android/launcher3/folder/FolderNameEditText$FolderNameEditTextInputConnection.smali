.class Lcom/android/launcher3/folder/FolderNameEditText$FolderNameEditTextInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "FolderNameEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/FolderNameEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderNameEditTextInputConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderNameEditText;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderNameEditText;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0
    .param p2, "target"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "mutable"    # Z

    .line 111
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderNameEditText$FolderNameEditTextInputConnection;->this$0:Lcom/android/launcher3/folder/FolderNameEditText;

    .line 112
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 113
    return-void
.end method


# virtual methods
.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPos"    # I

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderNameEditText$FolderNameEditTextInputConnection;->this$0:Lcom/android/launcher3/folder/FolderNameEditText;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/FolderNameEditText;->-$$Nest$fputmEnteredCompose(Lcom/android/launcher3/folder/FolderNameEditText;Z)V

    .line 118
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method
