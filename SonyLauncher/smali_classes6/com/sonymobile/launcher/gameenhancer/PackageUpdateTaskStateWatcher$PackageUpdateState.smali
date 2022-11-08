.class final enum Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;
.super Ljava/lang/Enum;
.source "PackageUpdateTaskStateWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PackageUpdateState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

.field public static final enum IDLE:Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

.field public static final enum RUNNING:Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;


# instance fields
.field private final stateId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetstateId(Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;)I
    .locals 0

    iget p0, p0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;->stateId:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 20
    new-instance v0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;->IDLE:Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

    new-instance v1, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;->RUNNING:Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

    .line 19
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;->$VALUES:[Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "stateId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;->stateId:I

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;
    .locals 1

    .line 19
    sget-object v0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;->$VALUES:[Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

    invoke-virtual {v0}, [Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher$PackageUpdateState;->stateId:I

    return v0
.end method
