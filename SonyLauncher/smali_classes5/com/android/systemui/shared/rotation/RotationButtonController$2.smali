.class Lcom/android/systemui/shared/rotation/RotationButtonController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RotationButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 314
    iput-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$2;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 317
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$2;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-static {v0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->access$400(Lcom/android/systemui/shared/rotation/RotationButtonController;)Lcom/android/systemui/shared/rotation/RotationButton;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/shared/rotation/RotationButton;->hide()Z

    .line 318
    return-void
.end method
