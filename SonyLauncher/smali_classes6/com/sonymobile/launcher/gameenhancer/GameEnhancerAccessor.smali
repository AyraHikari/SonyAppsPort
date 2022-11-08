.class public Lcom/sonymobile/launcher/gameenhancer/GameEnhancerAccessor;
.super Ljava/lang/Object;
.source "GameEnhancerAccessor.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.gameenhancer.sharedpreferencecontentprovider"

.field public static final PREFERENCE_KEY_HIDE_LAUNCHER_ICON:Ljava/lang/String; = "hide_launcher_icon_from_launcher_app"

.field private static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "content://com.sonymobile.gameenhancer.sharedpreferencecontentprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerAccessor;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHideLauncherIconEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 23
    const-string v0, "hide_launcher_icon_from_launcher_app"

    invoke-static {p0, v0}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerAccessor;->queryBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static queryBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v3, v7

    .line 33
    .local v3, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerAccessor;->URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 35
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 36
    return v7

    .line 39
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 41
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 42
    .local v2, "columnIndex":I
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 44
    .local v4, "value":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 46
    if-ne v4, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v7

    :goto_0
    return v0
.end method

.method public static setHideLauncherIconSetting(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .line 27
    const-string v0, "hide_launcher_icon_from_launcher_app"

    invoke-static {p0, v0, p1}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerAccessor;->updateBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 28
    return-void
.end method

.method private static updateBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "settingValue"    # Z

    .line 51
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 52
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerAccessor;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 55
    return-void
.end method
