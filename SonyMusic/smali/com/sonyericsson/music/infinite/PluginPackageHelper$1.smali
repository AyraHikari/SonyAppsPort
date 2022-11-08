.class Lcom/sonyericsson/music/infinite/PluginPackageHelper$1;
.super Ljava/lang/Object;
.source "PluginPackageHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/infinite/PluginPackageHelper;->sendDescriptionRequestToAllPlugins(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/sonyericsson/music/infinite/PluginPackageHelper$1;->val$appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sonyericsson/music/infinite/PluginPackageHelper$1;->val$receiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginPackageHelper$1;->val$appContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/music/infinite/PluginPackageHelper;->getInfiniteActivities(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 87
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-wide/16 v5, 0x0

    .line 91
    :try_start_0
    iget-object v7, p0, Lcom/sonyericsson/music/infinite/PluginPackageHelper$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 92
    iget-wide v5, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v11, v5

    goto :goto_1

    :catch_0
    move-wide v11, v5

    .line 99
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/music/infinite/PluginPackageHelper$1;->val$appContext:Landroid/content/Context;

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/sonyericsson/music/infinite/PluginPreferences;->readLastUpdateTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v11

    if-gez v7, :cond_0

    .line 104
    iget-object v7, p0, Lcom/sonyericsson/music/infinite/PluginPackageHelper$1;->val$appContext:Landroid/content/Context;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v10, p0, Lcom/sonyericsson/music/infinite/PluginPackageHelper$1;->val$receiver:Landroid/content/BroadcastReceiver;

    invoke-static/range {v7 .. v12}, Lcom/sonyericsson/music/infinite/PluginPackageHelper;->sendDescriptionRequestToPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;J)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
