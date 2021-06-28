.class public final enum Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;
.super Ljava/lang/Enum;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserAcceptance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

.field public static final enum CTA_ALREADY_SHOWN:Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

.field public static final enum CTA_AUTO_ACCEPT:Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

.field public static final enum SHOW_CTA_DIALOG:Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    const-string v1, "SHOW_CTA_DIALOG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;->SHOW_CTA_DIALOG:Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    .line 30
    new-instance v0, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    const-string v1, "CTA_AUTO_ACCEPT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;->CTA_AUTO_ACCEPT:Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    .line 31
    new-instance v0, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    const-string v1, "CTA_ALREADY_SHOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;->CTA_ALREADY_SHOWN:Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    const/4 v0, 0x3

    .line 28
    new-array v0, v0, [Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    sget-object v1, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;->SHOW_CTA_DIALOG:Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;->CTA_AUTO_ACCEPT:Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;->CTA_ALREADY_SHOWN:Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;->$VALUES:[Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;
    .locals 1

    .line 28
    const-class v0, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;
    .locals 1

    .line 28
    sget-object v0, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;->$VALUES:[Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    return-object v0
.end method
