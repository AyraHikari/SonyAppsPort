.class public Lcom/android/launcher3/LauncherFiles;
.super Ljava/lang/Object;
.source "LauncherFiles.java"


# static fields
.field public static final ALL_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final APP_ICONS_DB:Ljava/lang/String; = "app_icons.db"

.field public static final BACKUP_DB:Ljava/lang/String; = "backup.db"

.field public static final DEVICE_PREFERENCES_KEY:Ljava/lang/String; = "com.android.launcher3.device.prefs"

.field public static final GRID_DB_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAUNCHER_4_BY_4_DB:Ljava/lang/String; = "launcher_4_by_4.db"

.field public static final LAUNCHER_5_BY_4_DB:Ljava/lang/String; = "launcher_5_by_4.db"

.field public static final LAUNCHER_5_BY_5_DB:Ljava/lang/String; = "launcher_5_by_5.db"

.field public static final LAUNCHER_6_BY_4_DB:Ljava/lang/String; = "launcher_6_by_4.db"

.field public static final LAUNCHER_6_BY_5_DB:Ljava/lang/String; = "launcher_6_by_5.db"

.field public static final LAUNCHER_7_BY_4_DB:Ljava/lang/String; = "launcher_7_by_4.db"

.field public static final LAUNCHER_7_BY_5_DB:Ljava/lang/String; = "launcher_7_by_5.db"

.field public static final LAUNCHER_8_BY_5_DB:Ljava/lang/String; = "launcher_8_by_5.db"

.field public static final LAUNCHER_DB:Ljava/lang/String; = "launcher.db"

.field public static final MANAGED_USER_PREFERENCES_KEY:Ljava/lang/String; = "com.android.launcher3.managedusers.prefs"

.field public static final OTHER_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "com.android.launcher3.prefs"

.field public static final WIDGET_PREVIEWS_DB:Ljava/lang/String; = "widgetpreviews.db"

.field private static final XML:Ljava/lang/String; = ".xml"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 37
    const-string v0, "launcher.db"

    const-string v1, "launcher_4_by_4.db"

    const-string v2, "launcher_5_by_4.db"

    const-string v3, "launcher_5_by_5.db"

    const-string v4, "launcher_6_by_4.db"

    const-string v5, "launcher_6_by_5.db"

    const-string v6, "launcher_7_by_4.db"

    const-string v7, "launcher_7_by_5.db"

    const-string v8, "launcher_8_by_5.db"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherFiles;->GRID_DB_FILES:Ljava/util/List;

    .line 48
    const-string v1, "backup.db"

    const-string v2, "com.android.launcher3.prefs.xml"

    const-string v3, "widgetpreviews.db"

    const-string v4, "com.android.launcher3.managedusers.prefs.xml"

    const-string v5, "com.android.launcher3.device.prefs.xml"

    const-string v6, "app_icons.db"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherFiles;->OTHER_FILES:Ljava/util/List;

    .line 56
    new-instance v0, Lcom/android/launcher3/LauncherFiles$1;

    invoke-direct {v0}, Lcom/android/launcher3/LauncherFiles$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherFiles;->ALL_FILES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
