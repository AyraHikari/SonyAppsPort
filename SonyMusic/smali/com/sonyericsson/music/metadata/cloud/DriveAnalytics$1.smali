.class final Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics$1;
.super Ljava/lang/Object;
.source "DriveAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics;->updateConnectionState(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$state:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics$1;->val$appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics$1;->val$state:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics$1;->val$appContext:Landroid/content/Context;

    const-string v1, "pref_key_status"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->get(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics$1;->val$state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics$1;->val$appContext:Landroid/content/Context;

    const-string v1, "pref_key_status"

    iget-object v2, p0, Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics$1;->val$state:Ljava/lang/String;

    .line 51
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->set(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics$1;->val$appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics$1;->val$state:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics;->reportDriveUsageCustomDimension(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
