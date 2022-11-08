.class Lcom/android/launcher3/folder/PreviewBackground$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PreviewBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/PreviewBackground;->animateScale(FLjava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/PreviewBackground;

.field final synthetic val$onEnd:Ljava/lang/Runnable;

.field final synthetic val$onStart:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/PreviewBackground;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/PreviewBackground;

    .line 434
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    iput-object p2, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onStart:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 444
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onEnd:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 445
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/PreviewBackground;->-$$Nest$fputmScaleAnimator(Lcom/android/launcher3/folder/PreviewBackground;Landroid/animation/ValueAnimator;)V

    .line 448
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 437
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onStart:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 438
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 440
    :cond_0
    return-void
.end method
