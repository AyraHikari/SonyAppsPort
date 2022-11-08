.class Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$1;
.super Ljava/lang/Object;
.source "TaskbarAllAppsController.java"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    .line 66
    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$1;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$1;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->-$$Nest$fgetmProxyView(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;)Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;->close(Z)V

    .line 70
    return-void
.end method
