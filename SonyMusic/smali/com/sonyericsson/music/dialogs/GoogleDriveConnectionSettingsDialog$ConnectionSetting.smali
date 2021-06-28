.class final enum Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;
.super Ljava/lang/Enum;
.source "GoogleDriveConnectionSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConnectionSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

.field public static final enum WIFI:Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

.field public static final enum WIFI_AND_MOBILE:Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;


# instance fields
.field private final mIndex:I

.field private final mTextResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    new-instance v0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    const-string v1, "WIFI"

    const/4 v2, 0x0

    const v3, 0x7f1001ef

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->WIFI:Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    .line 45
    new-instance v0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    const-string v1, "WIFI_AND_MOBILE"

    const/4 v3, 0x1

    const v4, 0x7f1001ee

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->WIFI_AND_MOBILE:Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    const/4 v0, 0x2

    .line 43
    new-array v0, v0, [Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    sget-object v1, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->WIFI:Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->WIFI_AND_MOBILE:Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->$VALUES:[Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->mIndex:I

    .line 52
    iput p4, p0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->mTextResId:I

    return-void
.end method

.method static getConnectionSetting(I)Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;
    .locals 5

    .line 64
    invoke-static {}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->values()[Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 65
    invoke-virtual {v3}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->getIndex()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static getOptions(Landroid/content/Context;)[Ljava/lang/CharSequence;
    .locals 7

    .line 74
    invoke-static {}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->values()[Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    move-result-object v0

    .line 76
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 79
    invoke-static {}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->values()[Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    add-int/lit8 v6, v4, 0x1

    .line 80
    invoke-virtual {v5}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->getTextResId()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;
    .locals 1

    .line 43
    const-class v0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;
    .locals 1

    .line 43
    sget-object v0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->$VALUES:[Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;

    return-object v0
.end method


# virtual methods
.method getIndex()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->mIndex:I

    return v0
.end method

.method getTextResId()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$ConnectionSetting;->mTextResId:I

    return v0
.end method
