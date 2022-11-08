.class Lcom/android/launcher3/folder/FolderAnimationManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/FolderAnimationManager;->addPreviewItemAnimators(Landroid/animation/AnimatorSet;FII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

.field final synthetic val$btv:Lcom/android/launcher3/BubbleTextView;

.field final synthetic val$initialScale:F

.field final synthetic val$xDistance:F

.field final synthetic val$yDistance:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderAnimationManager;Lcom/android/launcher3/BubbleTextView;FFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/FolderAnimationManager;

    .line 407
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->val$btv:Lcom/android/launcher3/BubbleTextView;

    iput p3, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->val$xDistance:F

    iput p4, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->val$yDistance:F

    iput p5, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->val$initialScale:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 422
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 423
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->val$btv:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTranslationX(F)V

    .line 424
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->val$btv:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTranslationY(F)V

    .line 425
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->val$btv:Lcom/android/launcher3/BubbleTextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setScaleX(F)V

    .line 426
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->val$btv:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setScaleY(F)V

    .line 427
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 410
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 412
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-$$Nest$fgetmIsOpening(Lcom/android/launcher3/folder/FolderAnimationManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->val$btv:Lcom/android/launcher3/BubbleTextView;

    iget v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->val$xDistance:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTranslationX(F)V

    .line 414
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->val$btv:Lcom/android/launcher3/BubbleTextView;

    iget v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->val$yDistance:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTranslationY(F)V

    .line 415
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->val$btv:Lcom/android/launcher3/BubbleTextView;

    iget v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->val$initialScale:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setScaleX(F)V

    .line 416
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->val$btv:Lcom/android/launcher3/BubbleTextView;

    iget v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->val$initialScale:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setScaleY(F)V

    .line 418
    :cond_0
    return-void
.end method
