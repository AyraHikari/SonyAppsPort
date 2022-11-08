.class public final Lcom/android/launcher3/LauncherSettings$Favorites;
.super Ljava/lang/Object;
.source "LauncherSettings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Favorites"
.end annotation


# static fields
.field public static final APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field public static final APPWIDGET_PROVIDER:Ljava/lang/String; = "appWidgetProvider"

.field public static final APPWIDGET_SOURCE:Ljava/lang/String; = "appWidgetSource"

.field public static final BACKUP_CONTENT_URI:Landroid/net/Uri;

.field public static final BACKUP_TABLE_NAME:Ljava/lang/String; = "favorites_bakup"

.field public static final CELLX:Ljava/lang/String; = "cellX"

.field public static final CELLY:Ljava/lang/String; = "cellY"

.field public static final CONTAINER:Ljava/lang/String; = "container"

.field public static final CONTAINER_ALL_APPS:I = -0x66

.field public static final CONTAINER_BOTTOM_WIDGETS_TRAY:I = -0x70

.field public static final CONTAINER_DESKTOP:I = -0x64

.field public static final CONTAINER_HOTSEAT:I = -0x65

.field public static final CONTAINER_HOTSEAT_PREDICTION:I = -0x67

.field public static final CONTAINER_PIN_WIDGETS:I = -0x71

.field public static final CONTAINER_PREDICTION:I = -0x68

.field public static final CONTAINER_QSB:I = -0x6e

.field public static final CONTAINER_SEARCH_RESULTS:I = -0x6a

.field public static final CONTAINER_SETTINGS:I = -0x6c

.field public static final CONTAINER_SHORTCUTS:I = -0x6b

.field public static final CONTAINER_TASKSWITCHER:I = -0x6d

.field public static final CONTAINER_UNKNOWN:I = -0x1

.field public static final CONTAINER_WALLPAPERS:I = -0x72

.field public static final CONTAINER_WIDGETS_PREDICTION:I = -0x6f

.field public static final CONTAINER_WIDGETS_TRAY:I = -0x69

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXTENDED_CONTAINERS:I = -0xc8

.field public static final HYBRID_HOTSEAT_BACKUP_TABLE:Ljava/lang/String; = "hotseat_restore_backup"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final ICON_PACKAGE:Ljava/lang/String; = "iconPackage"

.field public static final ICON_RESOURCE:Ljava/lang/String; = "iconResource"

.field public static final INTENT:Ljava/lang/String; = "intent"

.field public static final ITEM_TYPE:Ljava/lang/String; = "itemType"

.field public static final ITEM_TYPE_APPLICATION:I = 0x0

.field public static final ITEM_TYPE_APPWIDGET:I = 0x4

.field public static final ITEM_TYPE_CUSTOM_APPWIDGET:I = 0x5

.field public static final ITEM_TYPE_DEEP_SHORTCUT:I = 0x6

.field public static final ITEM_TYPE_FOLDER:I = 0x2

.field public static final ITEM_TYPE_NON_ACTIONABLE:I = -0x1

.field public static final ITEM_TYPE_QSB:I = 0x8

.field public static final ITEM_TYPE_SEARCH_ACTION:I = 0x7

.field public static final ITEM_TYPE_SHORTCUT:I = 0x1

.field public static final ITEM_TYPE_TASK:I = 0x7

.field public static final MODIFIED:Ljava/lang/String; = "modified"

.field public static final OPTIONS:Ljava/lang/String; = "options"

.field public static final PREVIEW_CONTENT_URI:Landroid/net/Uri;

.field public static final PREVIEW_TABLE_NAME:Ljava/lang/String; = "favorites_preview"

.field public static final PROFILE_ID:Ljava/lang/String; = "profileId"

.field public static final RANK:Ljava/lang/String; = "rank"

.field public static final RESTORED:Ljava/lang/String; = "restored"

.field public static final SCREEN:Ljava/lang/String; = "screen"

.field public static final SPANX:Ljava/lang/String; = "spanX"

.field public static final SPANY:Ljava/lang/String; = "spanY"

.field public static final TABLE_NAME:Ljava/lang/String; = "favorites"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TMP_CONTENT_URI:Landroid/net/Uri;

.field public static final TMP_TABLE:Ljava/lang/String; = "favorites_tmp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    const-string v0, "content://com.sonymobile.launcher.settings/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 166
    const-string v0, "content://com.sonymobile.launcher.settings/favorites_bakup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherSettings$Favorites;->BACKUP_CONTENT_URI:Landroid/net/Uri;

    .line 172
    const-string v0, "content://com.sonymobile.launcher.settings/favorites_preview"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherSettings$Favorites;->PREVIEW_CONTENT_URI:Landroid/net/Uri;

    .line 178
    const-string v0, "content://com.sonymobile.launcher.settings/favorites_tmp"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherSettings$Favorites;->TMP_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTableToDb(Landroid/database/sqlite/SQLiteDatabase;JZ)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "myProfileId"    # J
    .param p3, "optional"    # Z

    .line 330
    const-string v0, "favorites"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/launcher3/LauncherSettings$Favorites;->addTableToDb(Landroid/database/sqlite/SQLiteDatabase;JZLjava/lang/String;)V

    .line 331
    return-void
.end method

.method public static addTableToDb(Landroid/database/sqlite/SQLiteDatabase;JZLjava/lang/String;)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "myProfileId"    # J
    .param p3, "optional"    # Z
    .param p4, "tableName"    # Ljava/lang/String;

    .line 335
    if-eqz p3, :cond_0

    const-string v0, " IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 336
    .local v0, "ifNotExists":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,iconPackage TEXT,iconResource TEXT,icon BLOB,appWidgetProvider TEXT,modified INTEGER NOT NULL DEFAULT 0,restored INTEGER NOT NULL DEFAULT 0,profileId INTEGER DEFAULT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rank INTEGER NOT NULL DEFAULT 0,options INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appWidgetSource"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public static final containerToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "container"    # I

    .line 225
    packed-switch p0, :pswitch_data_0

    .line 233
    :pswitch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 226
    :pswitch_1
    const-string v0, "desktop"

    return-object v0

    .line 227
    :pswitch_2
    const-string v0, "hotseat"

    return-object v0

    .line 229
    :pswitch_3
    const-string v0, "all_apps"

    return-object v0

    .line 228
    :pswitch_4
    const-string v0, "prediction"

    return-object v0

    .line 230
    :pswitch_5
    const-string v0, "widgets_tray"

    return-object v0

    .line 231
    :pswitch_6
    const-string v0, "search_result"

    return-object v0

    .line 232
    :pswitch_7
    const-string v0, "shortcuts"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x6b
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getContentUri(I)Landroid/net/Uri;
    .locals 2
    .param p0, "id"    # I

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sonymobile.launcher.settings/favorites/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final itemTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 238
    packed-switch p0, :pswitch_data_0

    .line 247
    :pswitch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :pswitch_1
    const-string v0, "QSB"

    return-object v0

    .line 245
    :pswitch_2
    const-string v0, "TASK"

    return-object v0

    .line 244
    :pswitch_3
    const-string v0, "DEEPSHORTCUT"

    return-object v0

    .line 243
    :pswitch_4
    const-string v0, "CUSTOMWIDGET"

    return-object v0

    .line 242
    :pswitch_5
    const-string v0, "WIDGET"

    return-object v0

    .line 241
    :pswitch_6
    const-string v0, "FOLDER"

    return-object v0

    .line 240
    :pswitch_7
    const-string v0, "SHORTCUT"

    return-object v0

    .line 239
    :pswitch_8
    const-string v0, "APP"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
