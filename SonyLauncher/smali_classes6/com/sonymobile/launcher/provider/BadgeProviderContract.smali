.class public final Lcom/sonymobile/launcher/provider/BadgeProviderContract;
.super Ljava/lang/Object;
.source "BadgeProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/launcher/provider/BadgeProviderContract$Columns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.home.resourceprovider"

.field protected static final BADGE_PATH:Ljava/lang/String; = "badge"

.field private static final BASE_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field protected static final MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.sonymobile.home.resourceprovider.badge"

.field public static final PERMISSION_INSERT_BADGES:Ljava/lang/String; = "com.sonymobile.home.permission.PROVIDER_INSERT_BADGE"

.field protected static final PERMISSION_INSERT_BADGES_PROXY:Ljava/lang/String; = "com.sonymobile.home.permission.PROVIDER_INSERT_BADGE_PROXY"

.field protected static final PERMISSION_READ_BADGES:Ljava/lang/String; = "com.sonymobile.home.permission.PROVIDER_READ_BADGE"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const-string v0, "content://com.sonymobile.home.resourceprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/provider/BadgeProviderContract;->BASE_URI:Landroid/net/Uri;

    .line 66
    const-string v1, "badge"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/provider/BadgeProviderContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method
