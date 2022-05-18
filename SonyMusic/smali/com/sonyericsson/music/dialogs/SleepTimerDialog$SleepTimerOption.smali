.class public final enum Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;
.super Ljava/lang/Enum;
.source "SleepTimerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/dialogs/SleepTimerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SleepTimerOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

.field public static final enum FIFTEEN_MINUTES:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

.field public static final enum OFF:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

.field public static final enum ONE_HOUR:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

.field public static final enum THIRTY_MINUTES:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

.field public static final enum TWO_HOURS:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

.field public static final enum TWO_MINUTES:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;


# instance fields
.field private final mRadioButtonTextArg:I

.field private final mRadioButtonTextResId:I

.field private final mSharedPrefsValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 45
    new-instance v7, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    const-string v1, "OFF"

    const/4 v2, 0x0

    const v3, 0x7f10029a

    const/4 v4, -0x1

    const-wide/16 v5, -0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v7, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->OFF:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    .line 46
    new-instance v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    const-string v9, "FIFTEEN_MINUTES"

    const/4 v10, 0x1

    const v11, 0x7f10029d

    const/16 v12, 0xf

    const-wide/32 v13, 0xdbba0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->FIFTEEN_MINUTES:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    .line 47
    new-instance v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    const-string v2, "THIRTY_MINUTES"

    const/4 v3, 0x2

    const v4, 0x7f10029d

    const/16 v5, 0x1e

    const-wide/32 v6, 0x1b7740

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->THIRTY_MINUTES:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    .line 48
    new-instance v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    const-string v9, "ONE_HOUR"

    const/4 v10, 0x3

    const v11, 0x7f10029e

    const/4 v12, -0x1

    const-wide/32 v13, 0x36ee80

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->ONE_HOUR:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    .line 49
    new-instance v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    const-string v2, "TWO_HOURS"

    const/4 v3, 0x4

    const v4, 0x7f10029b

    const/4 v5, 0x2

    const-wide/32 v6, 0x6ddd00

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->TWO_HOURS:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    .line 51
    new-instance v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    const-string v9, "TWO_MINUTES"

    const/4 v10, 0x5

    const v11, 0x7f10029d

    const/4 v12, 0x2

    const-wide/32 v13, 0x1d4c0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;-><init>(Ljava/lang/String;IIIJ)V

    sput-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->TWO_MINUTES:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    const/4 v0, 0x6

    .line 43
    new-array v0, v0, [Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    sget-object v1, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->OFF:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->FIFTEEN_MINUTES:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->THIRTY_MINUTES:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->ONE_HOUR:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->TWO_HOURS:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->TWO_MINUTES:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->$VALUES:[Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->mRadioButtonTextResId:I

    .line 60
    iput p4, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->mRadioButtonTextArg:I

    .line 61
    iput-wide p5, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->mSharedPrefsValue:J

    return-void
.end method

.method public static translateMillisToOption(J)Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;
    .locals 3

    .line 77
    sget-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->OFF:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    invoke-virtual {v0}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->getSharedPrefsValue()J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 78
    sget-object p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->OFF:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    return-object p0

    .line 79
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->FIFTEEN_MINUTES:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    invoke-virtual {v0}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->getSharedPrefsValue()J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-nez v2, :cond_1

    .line 80
    sget-object p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->FIFTEEN_MINUTES:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    return-object p0

    .line 81
    :cond_1
    sget-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->THIRTY_MINUTES:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    invoke-virtual {v0}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->getSharedPrefsValue()J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-nez v2, :cond_2

    .line 82
    sget-object p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->THIRTY_MINUTES:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    return-object p0

    .line 83
    :cond_2
    sget-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->ONE_HOUR:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    invoke-virtual {v0}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->getSharedPrefsValue()J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-nez v2, :cond_3

    .line 84
    sget-object p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->ONE_HOUR:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    return-object p0

    .line 85
    :cond_3
    sget-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->TWO_HOURS:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    invoke-virtual {v0}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->getSharedPrefsValue()J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-nez v2, :cond_4

    .line 86
    sget-object p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->TWO_HOURS:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    return-object p0

    .line 87
    :cond_4
    sget-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->TWO_MINUTES:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    invoke-virtual {v0}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->getSharedPrefsValue()J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-nez v2, :cond_5

    .line 88
    sget-object p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->TWO_MINUTES:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    return-object p0

    .line 91
    :cond_5
    sget-object p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->OFF:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;
    .locals 1

    .line 43
    const-class v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;
    .locals 1

    .line 43
    sget-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->$VALUES:[Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    return-object v0
.end method


# virtual methods
.method public getRadioButtonText(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 65
    iget v0, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->mRadioButtonTextArg:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 66
    iget v1, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->mRadioButtonTextResId:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 68
    :cond_0
    iget v0, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->mRadioButtonTextResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSharedPrefsValue()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->mSharedPrefsValue:J

    return-wide v0
.end method
