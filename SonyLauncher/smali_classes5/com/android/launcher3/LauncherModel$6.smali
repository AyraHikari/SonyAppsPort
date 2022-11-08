.class Lcom/android/launcher3/LauncherModel$6;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->onWidgetLabelsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$updatedPackages:Ljava/util/HashSet;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherModel;

    .line 716
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$6;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$6;->val$updatedPackages:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$6;->val$user:Landroid/os/UserHandle;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 3
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 719
    iget-object v0, p2, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$6;->val$updatedPackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$6;->val$user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/model/WidgetsModel;->onPackageIconsUpdated(Ljava/util/Set;Landroid/os/UserHandle;Lcom/android/launcher3/LauncherAppState;)V

    .line 720
    invoke-virtual {p0, p2}, Lcom/android/launcher3/LauncherModel$6;->bindUpdatedWidgets(Lcom/android/launcher3/model/BgDataModel;)V

    .line 721
    return-void
.end method
