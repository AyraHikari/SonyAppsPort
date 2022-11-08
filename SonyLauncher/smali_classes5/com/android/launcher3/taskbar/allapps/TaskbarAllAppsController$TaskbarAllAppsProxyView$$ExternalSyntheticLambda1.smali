.class public final synthetic Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView$$ExternalSyntheticLambda1;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView$$ExternalSyntheticLambda1;->f$0:Z

    check-cast p1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;

    invoke-static {v0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;->lambda$handleClose$0(ZLcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;)V

    return-void
.end method
