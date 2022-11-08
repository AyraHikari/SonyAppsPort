.class public final synthetic Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/util/VibratorWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:F

.field public final synthetic f$3:Landroid/os/VibrationEffect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/VibratorWrapper;IFLandroid/os/VibrationEffect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/util/VibratorWrapper;

    iput p2, p0, Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda0;->f$2:F

    iput-object p4, p0, Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda0;->f$3:Landroid/os/VibrationEffect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/util/VibratorWrapper;

    iget v1, p0, Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda0;->f$2:F

    iget-object v3, p0, Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda0;->f$3:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/util/VibratorWrapper;->lambda$vibrate$1$com-android-quickstep-util-VibratorWrapper(IFLandroid/os/VibrationEffect;)V

    return-void
.end method
