.class Lcom/android/launcher3/folder/Folder$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/Folder;->animateOpen(Ljava/util/List;I)V
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

    .line 696
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 705
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/Folder;->-$$Nest$msetState(Lcom/android/launcher3/folder/Folder;I)V

    .line 706
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->access$000(Lcom/android/launcher3/folder/Folder;)V

    .line 707
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendFolderOpenedEventToTest(Landroid/content/Context;)V

    .line 709
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->setFocusOnFirstChild()V

    .line 710
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 699
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setIconVisible(Z)V

    .line 700
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$4;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->drawLeaveBehindIfExists()V

    .line 701
    return-void
.end method
