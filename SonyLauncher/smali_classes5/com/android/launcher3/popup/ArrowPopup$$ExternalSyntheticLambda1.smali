.class public final synthetic Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/popup/ArrowPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/popup/ArrowPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/popup/ArrowPopup;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/popup/ArrowPopup;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/ArrowPopup;->lambda$getOpenCloseAnimator$2$com-android-launcher3-popup-ArrowPopup(Landroid/animation/ValueAnimator;)V

    return-void
.end method
