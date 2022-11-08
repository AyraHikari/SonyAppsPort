.class public final synthetic Lcom/android/launcher3/uioverrides/RecentsViewStateController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/uioverrides/RecentsViewStateController;

.field public final synthetic f$1:Lcom/android/launcher3/LauncherState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/RecentsViewStateController;Lcom/android/launcher3/LauncherState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/uioverrides/RecentsViewStateController;

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController$$ExternalSyntheticLambda2;->f$1:Lcom/android/launcher3/LauncherState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/uioverrides/RecentsViewStateController;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController$$ExternalSyntheticLambda2;->f$1:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->lambda$setStateWithAnimationInternal$1$com-android-launcher3-uioverrides-RecentsViewStateController(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
