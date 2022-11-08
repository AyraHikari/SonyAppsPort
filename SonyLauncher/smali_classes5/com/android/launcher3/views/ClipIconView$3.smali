.class Lcom/android/launcher3/views/ClipIconView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ClipIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/views/ClipIconView;->update(Landroid/graphics/RectF;FFFIZFFLandroid/view/ViewGroup$MarginLayoutParams;Lcom/android/launcher3/DeviceProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/views/ClipIconView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/views/ClipIconView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/views/ClipIconView;

    .line 207
    iput-object p1, p0, Lcom/android/launcher3/views/ClipIconView$3;->this$0:Lcom/android/launcher3/views/ClipIconView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/views/ClipIconView$3;->this$0:Lcom/android/launcher3/views/ClipIconView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/views/ClipIconView;->-$$Nest$fputmRevealAnimator(Lcom/android/launcher3/views/ClipIconView;Landroid/animation/ValueAnimator;)V

    .line 211
    return-void
.end method
