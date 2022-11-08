.class public Lcom/sonymobile/quickstep/DualDriveUtil;
.super Ljava/lang/Object;
.source "DualDriveUtil.java"


# static fields
.field private static final DUALDRIVE_CLASS_NAME:Ljava/lang/String; = "com.sonymobile.dualdrive.DualDriveService"

.field private static final DUALDRIVE_ENTRY_POINT_RECENTS:Ljava/lang/String; = "recents"

.field private static final DUALDRIVE_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.dualdrive"

.field private static final EXTRA_DUALDRIVE_ENTRY_POINT:Ljava/lang/String; = "com.sonymobile.dualdrive.EXTRA_DUALDRIVE_ENTRY_POINT"

.field private static sIsDualDriveAvailable:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isApplicationExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    .line 43
    .local v0, "isApplicationExist":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 49
    :cond_0
    goto :goto_0

    .line 47
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 50
    :goto_0
    return v0
.end method

.method public static isDualDriveAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 21
    sget-object v0, Lcom/sonymobile/quickstep/DualDriveUtil;->sIsDualDriveAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 22
    const-string v0, "com.sonymobile.dualdrive"

    invoke-static {p0, v0}, Lcom/sonymobile/quickstep/DualDriveUtil;->isApplicationExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/quickstep/DualDriveUtil;->sIsDualDriveAvailable:Ljava/lang/Boolean;

    .line 25
    :cond_0
    sget-object v0, Lcom/sonymobile/quickstep/DualDriveUtil;->sIsDualDriveAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static startDualDrive(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sonymobile.dualdrive"

    const-string v2, "com.sonymobile.dualdrive.DualDriveService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v1, "com.sonymobile.dualdrive.EXTRA_DUALDRIVE_ENTRY_POINT"

    const-string v2, "recents"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 33
    return-void
.end method
