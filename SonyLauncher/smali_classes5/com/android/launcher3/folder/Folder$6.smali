.class Lcom/android/launcher3/folder/Folder$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/Folder;->animateClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/Folder;

    .line 810
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$6;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 821
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$6;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->-$$Nest$fgetmKeyboardInsetAnimationCallback(Lcom/android/launcher3/folder/Folder;)Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$6;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->-$$Nest$fgetmKeyboardInsetAnimationCallback(Lcom/android/launcher3/folder/Folder;)Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$6;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/Folder;->-$$Nest$mcloseComplete(Lcom/android/launcher3/folder/Folder;Z)V

    .line 825
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$6;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->access$100(Lcom/android/launcher3/folder/Folder;)V

    .line 826
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$6;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/Folder;->-$$Nest$fputmIsAnimatingClosed(Lcom/android/launcher3/folder/Folder;Z)V

    .line 827
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 813
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$6;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$6;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/Folder;->-$$Nest$fputmIsAnimatingClosed(Lcom/android/launcher3/folder/Folder;Z)V

    .line 817
    return-void
.end method
