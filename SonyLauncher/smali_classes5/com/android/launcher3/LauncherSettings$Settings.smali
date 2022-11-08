.class public final Lcom/android/launcher3/LauncherSettings$Settings;
.super Ljava/lang/Object;
.source "LauncherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXTRA_DB_NAME:Ljava/lang/String; = "db_name"

.field public static final EXTRA_VALUE:Ljava/lang/String; = "value"

.field public static final METHOD_CLEAR_EMPTY_DB_FLAG:Ljava/lang/String; = "clear_empty_db_flag"

.field public static final METHOD_CLEAR_USE_TEST_WORKSPACE_LAYOUT_FLAG:Ljava/lang/String; = "clear_use_test_workspace_layout_flag"

.field public static final METHOD_CREATE_EMPTY_DB:Ljava/lang/String; = "create_empty_db"

.field public static final METHOD_DELETE_EMPTY_FOLDERS:Ljava/lang/String; = "delete_empty_folders"

.field public static final METHOD_LOAD_DEFAULT_FAVORITES:Ljava/lang/String; = "load_default_favorites"

.field public static final METHOD_NEW_ITEM_ID:Ljava/lang/String; = "generate_new_item_id"

.field public static final METHOD_NEW_SCREEN_ID:Ljava/lang/String; = "generate_new_screen_id"

.field public static final METHOD_NEW_TRANSACTION:Ljava/lang/String; = "new_db_transaction"

.field public static final METHOD_PREP_FOR_PREVIEW:Ljava/lang/String; = "prep_for_preview"

.field public static final METHOD_REFRESH_BACKUP_TABLE:Ljava/lang/String; = "refresh_backup_table"

.field public static final METHOD_REFRESH_HOTSEAT_RESTORE_TABLE:Ljava/lang/String; = "restore_hotseat_table"

.field public static final METHOD_REMOVE_GHOST_WIDGETS:Ljava/lang/String; = "remove_ghost_widgets"

.field public static final METHOD_RESTORE_BACKUP_TABLE:Ljava/lang/String; = "restore_backup_table"

.field public static final METHOD_SET_USE_TEST_WORKSPACE_LAYOUT_FLAG:Ljava/lang/String; = "set_use_test_workspace_layout_flag"

.field public static final METHOD_SWITCH_DATABASE:Ljava/lang/String; = "switch_database"

.field public static final METHOD_UPDATE_CURRENT_OPEN_HELPER:Ljava/lang/String; = "update_current_open_helper"

.field public static final METHOD_WAS_EMPTY_DB_CREATED:Ljava/lang/String; = "get_empty_db_flag"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 367
    const-string v0, "content://com.sonymobile.launcher.settings/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherSettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "method"    # Ljava/lang/String;

    .line 409
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static call(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .line 413
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static call(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 417
    sget-object v0, Lcom/android/launcher3/LauncherSettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
