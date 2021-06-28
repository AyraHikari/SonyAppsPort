.class Lcom/sonyericsson/music/infinite/PluginSelectionDialog$AsyncPluginFinder;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "PluginSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/infinite/PluginSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncPluginFinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Ljava/util/ArrayList<",
        "Lcom/sonyericsson/music/infinite/PluginInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$AsyncPluginFinder;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method private createSearchForMoreItem()Lcom/sonyericsson/music/infinite/PluginInfo;
    .locals 4

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$AsyncPluginFinder;->marketIsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Lcom/sonyericsson/music/infinite/PluginInfo;

    iget-object v1, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$AsyncPluginFinder;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1001de

    const v3, 0x7f0801ae

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/music/infinite/PluginInfo;-><init>(Landroid/content/Context;II)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private marketIsAvailable()Z
    .locals 3

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "market://search?"

    .line 216
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 217
    iget-object v1, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$AsyncPluginFinder;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$AsyncPluginFinder;->loadInBackground()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/infinite/PluginInfo;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$AsyncPluginFinder;->mAppContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/music/infinite/PluginPackageHelper;->getAudioPlugins(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 199
    invoke-direct {p0}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$AsyncPluginFinder;->createSearchForMoreItem()Lcom/sonyericsson/music/infinite/PluginInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .line 192
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V

    return-void
.end method
