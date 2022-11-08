.class Lcom/android/launcher3/widget/picker/WidgetsFullSheet$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WidgetsFullSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->open(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    .line 583
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 586
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->access$100(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 587
    return-void
.end method
