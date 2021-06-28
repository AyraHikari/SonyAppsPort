.class public final Lcom/sonymobile/music/common/VersionUpgrade;
.super Ljava/lang/Object;
.source "VersionUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/music/common/VersionUpgrade$VersionUpgradeable;
    }
.end annotation


# static fields
.field private static final VERSION_SHARED_PREFS_FILE:Ljava/lang/String; = "VersionUpgradePrefs"

.field static final VERSION_SUFFIX:Ljava/lang/String; = "_Version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkVersion(Landroid/content/Context;Ljava/lang/Object;Lcom/sonymobile/music/common/VersionUpgrade$VersionUpgradeable;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Lcom/sonymobile/music/common/VersionUpgrade$VersionUpgradeable<",
            "TT;>;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .line 36
    monitor-enter p1

    .line 37
    :try_start_0
    invoke-static {p0}, Lcom/sonymobile/music/common/VersionUpgrade;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    invoke-interface {p2}, Lcom/sonymobile/music/common/VersionUpgrade$VersionUpgradeable;->uniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/sonymobile/music/common/VersionUpgrade;->getPreferenceKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    .line 42
    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-le p4, v1, :cond_0

    .line 46
    invoke-interface {p2, p0, v1, p4}, Lcom/sonymobile/music/common/VersionUpgrade$VersionUpgradeable;->onUpgrade(Landroid/content/Context;II)Ljava/lang/Object;

    move-result-object v2

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 49
    invoke-interface {p0, p3, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    :cond_0
    monitor-exit p1

    return-object v2

    :catchall_0
    move-exception p0

    .line 53
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getPreferenceKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_Version"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "VersionUpgradePrefs"

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
