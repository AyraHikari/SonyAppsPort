.class public Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper$HideLauncherIconColumns;
.super Ljava/lang/Object;
.source "HideLauncherIconDatabaseHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HideLauncherIconColumns"
.end annotation


# static fields
.field public static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "hide_launcher_icon"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    nop

    .line 45
    const-string v0, "content://com.sonymobile.launcher.hidelaunchericonscontentprovider/hide_launcher_icon"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconDatabaseHelper$HideLauncherIconColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
