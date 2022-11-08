.class public final synthetic Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1, p2, p3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->lambda$addNavigationModeChangedCallback$9(Ljava/lang/Runnable;Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    return-void
.end method
