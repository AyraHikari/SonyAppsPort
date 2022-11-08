.class public final synthetic Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

.field public final synthetic f$1:Lcom/android/quickstep/util/AnimatorControllerWithResistance;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$$ExternalSyntheticLambda1;->f$1:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$$ExternalSyntheticLambda1;->f$1:Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->lambda$setupOverviewAnimators$1$com-android-launcher3-uioverrides-touchcontrollers-NoButtonQuickSwitchTouchController(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V

    return-void
.end method
