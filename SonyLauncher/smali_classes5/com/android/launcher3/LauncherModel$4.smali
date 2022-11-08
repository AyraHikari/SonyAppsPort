.class Lcom/android/launcher3/LauncherModel$4;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->onInstallSessionCreated(Landroid/content/pm/PackageInstaller$SessionInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$sessionInfo:Landroid/content/pm/PackageInstaller$SessionInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherModel;

    .line 593
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$4;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$4;->val$sessionInfo:Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 2
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 596
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$4;->val$sessionInfo:Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {p3, v0, v1}, Lcom/android/launcher3/model/AllAppsList;->addPromiseApp(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/launcher3/model/data/AppInfo;

    .line 597
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel$4;->bindApplicationsIfNeeded()V

    .line 598
    return-void
.end method
