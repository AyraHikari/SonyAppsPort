.class public final Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;
.super Lcom/android/launcher3/util/SQLiteCacheHelper;
.source "BaseIconCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/cache/BaseIconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IconDB"
.end annotation


# static fields
.field public static final COLUMNS_HIGH_RES:[Ljava/lang/String;

.field public static final COLUMNS_LOW_RES:[Ljava/lang/String;

.field public static final COLUMN_COMPONENT:Ljava/lang/String; = "componentName"

.field public static final COLUMN_FLAGS:Ljava/lang/String; = "flags"

.field public static final COLUMN_ICON:Ljava/lang/String; = "icon"

.field public static final COLUMN_ICON_COLOR:Ljava/lang/String; = "icon_color"

.field public static final COLUMN_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final COLUMN_LABEL:Ljava/lang/String; = "label"

.field public static final COLUMN_LAST_UPDATED:Ljava/lang/String; = "lastUpdated"

.field public static final COLUMN_MONO_ICON:Ljava/lang/String; = "mono_icon"

.field public static final COLUMN_ROWID:Ljava/lang/String; = "rowid"

.field public static final COLUMN_SYSTEM_STATE:Ljava/lang/String; = "system_state"

.field public static final COLUMN_USER:Ljava/lang/String; = "profileId"

.field public static final COLUMN_VERSION:Ljava/lang/String; = "version"

.field private static final INDEX_COLOR:I

.field private static final INDEX_FLAGS:I

.field private static final INDEX_ICON:I

.field private static final INDEX_MONO_ICON:I

.field private static final INDEX_TITLE:I

.field private static final RELEASE_VERSION:I = 0x22

.field public static final TABLE_NAME:Ljava/lang/String; = "icons"


# direct methods
.method static bridge synthetic -$$Nest$sfgetINDEX_COLOR()I
    .locals 1

    sget v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_COLOR:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetINDEX_FLAGS()I
    .locals 1

    sget v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_FLAGS:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetINDEX_ICON()I
    .locals 1

    sget v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_ICON:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetINDEX_MONO_ICON()I
    .locals 1

    sget v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_MONO_ICON:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetINDEX_TITLE()I
    .locals 1

    sget v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_TITLE:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 640
    const-string v0, "componentName"

    const-string v1, "label"

    const-string v2, "icon_color"

    const-string v3, "flags"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->COLUMNS_LOW_RES:[Ljava/lang/String;

    .line 645
    array-length v4, v0

    add-int/lit8 v4, v4, 0x2

    const-class v5, [Ljava/lang/String;

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    sput-object v4, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->COLUMNS_HIGH_RES:[Ljava/lang/String;

    .line 648
    array-length v5, v0

    const-string v6, "icon"

    aput-object v6, v4, v5

    .line 649
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    const-string v6, "mono_icon"

    aput-object v6, v4, v5

    .line 651
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_TITLE:I

    .line 652
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 653
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_COLOR:I

    .line 654
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_FLAGS:I

    .line 655
    array-length v0, v0

    sput v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_ICON:I

    .line 656
    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_MONO_ICON:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbFileName"    # Ljava/lang/String;
    .param p3, "iconPixelSize"    # I

    .line 659
    const/high16 v0, 0x220000

    add-int/2addr v0, p3

    const-string v1, "icons"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/launcher3/util/SQLiteCacheHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 660
    return-void
.end method


# virtual methods
.method protected onCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 664
    const-string v0, "CREATE TABLE IF NOT EXISTS icons (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, lastUpdated INTEGER NOT NULL DEFAULT 0, version INTEGER NOT NULL DEFAULT 0, icon BLOB, mono_icon BLOB, icon_color INTEGER NOT NULL DEFAULT 0, flags INTEGER NOT NULL DEFAULT 0, label TEXT, system_state TEXT, keywords TEXT, PRIMARY KEY (componentName, profileId) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 678
    return-void
.end method
