.class Lcom/android/launcher3/folder/Folder$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/Folder;->startAnimation(Landroid/animation/AnimatorSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;

.field final synthetic val$a:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;Landroid/animation/AnimatorSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/Folder;

    .line 577
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$2;->this$0:Lcom/android/launcher3/folder/Folder;

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder$2;->val$a:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 586
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$2;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/Folder;->-$$Nest$fputmCurrentAnimator(Lcom/android/launcher3/folder/Folder;Landroid/animation/AnimatorSet;)V

    .line 587
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 580
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$2;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/Folder;->-$$Nest$msetState(Lcom/android/launcher3/folder/Folder;I)V

    .line 581
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$2;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder$2;->val$a:Landroid/animation/AnimatorSet;

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/Folder;->-$$Nest$fputmCurrentAnimator(Lcom/android/launcher3/folder/Folder;Landroid/animation/AnimatorSet;)V

    .line 582
    return-void
.end method
