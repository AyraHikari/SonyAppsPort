.class Lcom/android/launcher3/folder/Folder$5;
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

.field final synthetic val$updateAnimationFlag:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/Folder;

    .line 726
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$5;->this$0:Lcom/android/launcher3/folder/Folder;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/Folder$5;->val$updateAnimationFlag:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 731
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$5;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameEditText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x279

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 732
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder$5;->this$0:Lcom/android/launcher3/folder/Folder;

    .line 734
    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 733
    const v2, 0x10c000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 735
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$5;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->-$$Nest$fgetmPageIndicator(Lcom/android/launcher3/folder/Folder;)Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->playEntryAnimation()V

    .line 737
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder$5;->val$updateAnimationFlag:Z

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$5;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v1, 0x4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder$5;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v3, v3, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    .line 739
    invoke-virtual {v3}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    .line 738
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/model/data/FolderInfo;->setOption(IZLcom/android/launcher3/model/ModelWriter;)V

    .line 741
    :cond_0
    return-void
.end method
