.class public Lcom/sonymobile/music/common/GoogleAnalyticsConstants$CustomDimensions;
.super Ljava/lang/Object;
.source "GoogleAnalyticsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/music/common/GoogleAnalyticsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomDimensions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/music/common/GoogleAnalyticsConstants$CustomDimensions$PersonalDataCollectionSetting;,
        Lcom/sonymobile/music/common/GoogleAnalyticsConstants$CustomDimensions$CustomDimensionVersion;
    }
.end annotation


# static fields
.field public static final CAST_DEVICES:Ljava/lang/String; = "music-gagtm-castDevices"

.field public static final DRIVE_USAGE:Ljava/lang/String; = "music-gagtm-driveUsage"

.field public static final INSTALLED_EXTENSIONS:Ljava/lang/String; = "music-gagtm-installedExtensions"

.field public static final LOCAL_LIBRARY_COUNT:Ljava/lang/String; = "music-gagtm-localLibraryCount"

.field public static final LOCAL_MIME_TYPES:Ljava/lang/String; = "music-gagtm-localMimeTypes"

.field public static final PERSONAL_DATA_COLLECTION:Ljava/lang/String; = "music-gagtm-personalDataCollection"

.field public static final PLAY_TIME:Ljava/lang/String; = "music-gagtm-playTime"

.field public static final THEME_SETTING:Ljava/lang/String; = "music-gagtm-themeSetting"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
