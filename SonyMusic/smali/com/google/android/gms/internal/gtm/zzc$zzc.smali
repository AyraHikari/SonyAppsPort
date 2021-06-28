.class public final Lcom/google/android/gms/internal/gtm/zzc$zzc;
.super Lcom/google/android/gms/internal/gtm/zzrc;

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzsm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gtm/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gtm/zzc$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzrc<",
        "Lcom/google/android/gms/internal/gtm/zzc$zzc;",
        "Lcom/google/android/gms/internal/gtm/zzc$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzsm;"
    }
.end annotation


# static fields
.field private static volatile zznw:Lcom/google/android/gms/internal/gtm/zzsu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzsu<",
            "Lcom/google/android/gms/internal/gtm/zzc$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzop:Lcom/google/android/gms/internal/gtm/zzc$zzc;


# instance fields
.field private zznr:I

.field private zzok:Ljava/lang/String;

.field private zzol:J

.field private zzom:J

.field private zzon:Z

.field private zzoo:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzc$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzc$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzop:Lcom/google/android/gms/internal/gtm/zzc$zzc;

    .line 37
    const-class v0, Lcom/google/android/gms/internal/gtm/zzc$zzc;

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzop:Lcom/google/android/gms/internal/gtm/zzc$zzc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzrc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzrc;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzok:Ljava/lang/String;

    const-wide/32 v0, 0x7fffffff

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzom:J

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/gtm/zzsu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/gtm/zzsu<",
            "Lcom/google/android/gms/internal/gtm/zzc$zzc;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzop:Lcom/google/android/gms/internal/gtm/zzc$zzc;

    .line 31
    sget v1, Lcom/google/android/gms/internal/gtm/zzrc$zze;->zzbax:I

    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzrc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzsu;

    return-object v0
.end method

.method static synthetic zzk()Lcom/google/android/gms/internal/gtm/zzc$zzc;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzop:Lcom/google/android/gms/internal/gtm/zzc$zzc;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzok:Ljava/lang/String;

    return-object v0
.end method

.method public final hasKey()Z
    .locals 2

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zznr:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/gtm/zzd;->zznq:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 29
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 27
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zznw:Lcom/google/android/gms/internal/gtm/zzsu;

    if-nez p1, :cond_1

    .line 20
    const-class p2, Lcom/google/android/gms/internal/gtm/zzc$zzc;

    monitor-enter p2

    .line 21
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zznw:Lcom/google/android/gms/internal/gtm/zzsu;

    if-nez p1, :cond_0

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrc$zzb;

    sget-object p3, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzop:Lcom/google/android/gms/internal/gtm/zzc$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/gtm/zzrc$zzb;-><init>(Lcom/google/android/gms/internal/gtm/zzrc;)V

    .line 24
    sput-object p1, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zznw:Lcom/google/android/gms/internal/gtm/zzsu;

    .line 25
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 17
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzop:Lcom/google/android/gms/internal/gtm/zzc$zzc;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    .line 14
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zznr"

    aput-object v0, p1, p2

    const-string p2, "zzok"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzol"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzom"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzon"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzoo"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0002\u0001\u0003\u0002\u0002\u0004\u0007\u0003\u0005\u0002\u0004"

    .line 16
    sget-object p3, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzop:Lcom/google/android/gms/internal/gtm/zzc$zzc;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/gtm/zzrc;->zza(Lcom/google/android/gms/internal/gtm/zzsk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzc$zzc$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzc$zzc$zza;-><init>(Lcom/google/android/gms/internal/gtm/zzd;)V

    return-object p1

    .line 12
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzc$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzc$zzc;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzg()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzol:J

    return-wide v0
.end method

.method public final zzh()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzom:J

    return-wide v0
.end method

.method public final zzi()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzon:Z

    return v0
.end method

.method public final zzj()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zzoo:J

    return-wide v0
.end method
