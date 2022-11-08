.class public final synthetic Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/AppWidgetResizeFrame;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/AppWidgetResizeFrame;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->lambda$snapToWidget$4$com-android-launcher3-AppWidgetResizeFrame(Landroid/animation/ValueAnimator;)V

    return-void
.end method
