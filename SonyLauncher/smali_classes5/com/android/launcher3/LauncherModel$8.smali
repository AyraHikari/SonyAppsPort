.class Lcom/android/launcher3/LauncherModel$8;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->refreshAndBindWidgetsAndShortcuts(Lcom/android/launcher3/util/PackageUserKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$packageUser:Lcom/android/launcher3/util/PackageUserKey;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherModel;

    .line 797
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$8;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$8;->val$packageUser:Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 2
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 800
    iget-object v0, p2, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$8;->val$packageUser:Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    .line 801
    invoke-virtual {p0, p2}, Lcom/android/launcher3/LauncherModel$8;->bindUpdatedWidgets(Lcom/android/launcher3/model/BgDataModel;)V

    .line 802
    return-void
.end method
