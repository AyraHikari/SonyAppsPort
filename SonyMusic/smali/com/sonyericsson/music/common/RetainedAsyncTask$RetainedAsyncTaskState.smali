.class public final enum Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;
.super Ljava/lang/Enum;
.source "RetainedAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/RetainedAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RetainedAsyncTaskState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

.field public static final enum BACKGROUND_JOB_DONE_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

.field public static final enum BACKGROUND_JOB_IN_PROGRESS_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

.field public static final enum NOT_STARTED_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

.field public static final enum PROCESSED_RESULT_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 47
    new-instance v0, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    const-string v1, "NOT_STARTED_STATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;->NOT_STARTED_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    .line 50
    new-instance v0, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    const-string v1, "BACKGROUND_JOB_IN_PROGRESS_STATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;->BACKGROUND_JOB_IN_PROGRESS_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    .line 53
    new-instance v0, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    const-string v1, "BACKGROUND_JOB_DONE_STATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;->BACKGROUND_JOB_DONE_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    .line 56
    new-instance v0, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    const-string v1, "PROCESSED_RESULT_STATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;->PROCESSED_RESULT_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    const/4 v0, 0x4

    .line 45
    new-array v0, v0, [Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    sget-object v1, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;->NOT_STARTED_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;->BACKGROUND_JOB_IN_PROGRESS_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;->BACKGROUND_JOB_DONE_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;->PROCESSED_RESULT_STATE:Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;->$VALUES:[Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;
    .locals 1

    .line 45
    const-class v0, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;
    .locals 1

    .line 45
    sget-object v0, Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;->$VALUES:[Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/common/RetainedAsyncTask$RetainedAsyncTaskState;

    return-object v0
.end method
