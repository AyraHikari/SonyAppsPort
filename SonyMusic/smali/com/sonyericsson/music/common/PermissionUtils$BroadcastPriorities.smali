.class public final enum Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;
.super Ljava/lang/Enum;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BroadcastPriorities"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;

.field public static final enum BROADCAST_PRIORITY_BUFFERING_DEFAULT:Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;

.field public static final enum BROADCAST_PRIORITY_PLAYER_CONTROLLER_BUFFERING:Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;


# instance fields
.field private final mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;

    const-string v1, "BROADCAST_PRIORITY_PLAYER_CONTROLLER_BUFFERING"

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;->BROADCAST_PRIORITY_PLAYER_CONTROLLER_BUFFERING:Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;

    .line 38
    new-instance v0, Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;

    const-string v1, "BROADCAST_PRIORITY_BUFFERING_DEFAULT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;->BROADCAST_PRIORITY_BUFFERING_DEFAULT:Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;

    const/4 v0, 0x2

    .line 34
    new-array v0, v0, [Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;

    sget-object v1, Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;->BROADCAST_PRIORITY_PLAYER_CONTROLLER_BUFFERING:Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;->BROADCAST_PRIORITY_BUFFERING_DEFAULT:Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;->$VALUES:[Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;->mPriority:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;
    .locals 1

    .line 34
    const-class v0, Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;
    .locals 1

    .line 34
    sget-object v0, Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;->$VALUES:[Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;

    return-object v0
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;->mPriority:I

    return v0
.end method
