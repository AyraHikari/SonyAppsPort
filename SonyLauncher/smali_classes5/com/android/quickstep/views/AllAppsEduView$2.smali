.class Lcom/android/quickstep/views/AllAppsEduView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AllAppsEduView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/AllAppsEduView;->playAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/AllAppsEduView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/AllAppsEduView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/views/AllAppsEduView;

    .line 219
    iput-object p1, p0, Lcom/android/quickstep/views/AllAppsEduView$2;->this$0:Lcom/android/quickstep/views/AllAppsEduView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 222
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$2;->this$0:Lcom/android/quickstep/views/AllAppsEduView;

    invoke-static {v0}, Lcom/android/quickstep/views/AllAppsEduView;->-$$Nest$fgetmCircle(Lcom/android/quickstep/views/AllAppsEduView;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 223
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$2;->this$0:Lcom/android/quickstep/views/AllAppsEduView;

    invoke-static {v0}, Lcom/android/quickstep/views/AllAppsEduView;->-$$Nest$fgetmGradient(Lcom/android/quickstep/views/AllAppsEduView;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 224
    return-void
.end method
