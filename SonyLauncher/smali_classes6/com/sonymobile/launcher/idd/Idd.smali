.class public Lcom/sonymobile/launcher/idd/Idd;
.super Ljava/lang/Object;
.source "Idd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/launcher/idd/Idd$SplitScreen;,
        Lcom/sonymobile/launcher/idd/Idd$CustomOrder;,
        Lcom/sonymobile/launcher/idd/Idd$AppLaunch;,
        Lcom/sonymobile/launcher/idd/Idd$SettingsChange;,
        Lcom/sonymobile/launcher/idd/Idd$SettingsStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sPreferencesLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsPreferencesLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sonymobile/launcher/idd/Idd;->sPreferencesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smisDefaultHomeApp(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sonymobile/launcher/idd/Idd;->isDefaultHomeApp(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/sonymobile/launcher/idd/Idd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/idd/Idd;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/launcher/idd/Idd;->sPreferencesLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isDefaultHomeApp(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 52
    .local v1, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 53
    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 54
    .local v2, "defaultLauncher":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 55
    .local v3, "defaultHome":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4
.end method
