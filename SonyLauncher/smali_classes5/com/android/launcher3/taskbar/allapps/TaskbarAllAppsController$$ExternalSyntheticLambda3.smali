.class public final synthetic Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    check-cast p1, Landroid/view/WindowManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->lambda$onDestroy$2$com-android-launcher3-taskbar-allapps-TaskbarAllAppsController(Landroid/view/WindowManager;)V

    return-void
.end method
