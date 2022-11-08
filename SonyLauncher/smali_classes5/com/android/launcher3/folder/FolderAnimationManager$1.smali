.class Lcom/android/launcher3/folder/FolderAnimationManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

.field final synthetic val$cellLayout:Lcom/android/launcher3/CellLayout;

.field final synthetic val$cellLayoutClipChildren:Z

.field final synthetic val$cellLayoutClipPadding:Z

.field final synthetic val$contentClipChildren:Z

.field final synthetic val$contentClipToPadding:Z

.field final synthetic val$folderClipChildren:Z

.field final synthetic val$folderClipToPadding:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderAnimationManager;ZZZZLcom/android/launcher3/CellLayout;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/FolderAnimationManager;

    .line 285
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->val$folderClipChildren:Z

    iput-boolean p3, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->val$folderClipToPadding:Z

    iput-boolean p4, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->val$contentClipChildren:Z

    iput-boolean p5, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->val$contentClipToPadding:Z

    iput-object p6, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->val$cellLayout:Lcom/android/launcher3/CellLayout;

    iput-boolean p7, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->val$cellLayoutClipChildren:Z

    iput-boolean p8, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->val$cellLayoutClipPadding:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 288
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 289
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setTranslationX(F)V

    .line 290
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setTranslationY(F)V

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setTranslationZ(F)V

    .line 292
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderPagedView;->setScaleX(F)V

    .line 293
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderPagedView;->setScaleY(F)V

    .line 294
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 295
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 296
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 297
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderNameEditText;->setAlpha(F)V

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->val$folderClipChildren:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setClipChildren(Z)V

    .line 300
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->val$folderClipToPadding:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setClipToPadding(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmContent(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->val$contentClipChildren:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->setClipChildren(Z)V

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmContent(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->val$contentClipToPadding:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->setClipToPadding(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->val$cellLayout:Lcom/android/launcher3/CellLayout;

    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->val$cellLayoutClipChildren:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setClipChildren(Z)V

    .line 304
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->val$cellLayout:Lcom/android/launcher3/CellLayout;

    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->val$cellLayoutClipPadding:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setClipToPadding(Z)V

    .line 306
    return-void
.end method
