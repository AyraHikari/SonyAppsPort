.class public final synthetic Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

.field public final synthetic f$1:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iput-object p2, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda1;->f$1:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda1;->f$1:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->lambda$addNavigationModeChangedCallback$10$com-android-quickstep-RecentsAnimationDeviceState(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    return-void
.end method
