.class public final synthetic Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/util/VibratorWrapper;

.field public final synthetic f$1:Landroid/os/VibrationEffect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/VibratorWrapper;Landroid/os/VibrationEffect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/util/VibratorWrapper;

    iput-object p2, p0, Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda2;->f$1:Landroid/os/VibrationEffect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/util/VibratorWrapper;

    iget-object v1, p0, Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda2;->f$1:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/VibratorWrapper;->lambda$vibrate$0$com-android-quickstep-util-VibratorWrapper(Landroid/os/VibrationEffect;)V

    return-void
.end method
