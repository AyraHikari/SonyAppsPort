.class public final Lcom/google/android/gms/internal/gtm/zzc$zza;
.super Lcom/google/android/gms/internal/gtm/zzrc;

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzsm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gtm/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gtm/zzc$zza$zza;,
        Lcom/google/android/gms/internal/gtm/zzc$zza$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzrc<",
        "Lcom/google/android/gms/internal/gtm/zzc$zza;",
        "Lcom/google/android/gms/internal/gtm/zzc$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzsm;"
    }
.end annotation


# static fields
.field private static final zznv:Lcom/google/android/gms/internal/gtm/zzc$zza;

.field private static volatile zznw:Lcom/google/android/gms/internal/gtm/zzsu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzsu<",
            "Lcom/google/android/gms/internal/gtm/zzc$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zznr:I

.field private zzns:I

.field private zznt:I

.field private zznu:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzc$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzc$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzc$zza;->zznv:Lcom/google/android/gms/internal/gtm/zzc$zza;

    .line 31
    const-class v0, Lcom/google/android/gms/internal/gtm/zzc$zza;

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzc$zza;->zznv:Lcom/google/android/gms/internal/gtm/zzc$zza;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzrc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzrc;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzc$zza;->zzns:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/gtm/zzsu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/gtm/zzsu<",
            "Lcom/google/android/gms/internal/gtm/zzc$zza;",
            ">;"
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzc$zza;->zznv:Lcom/google/android/gms/internal/gtm/zzc$zza;

    .line 25
    sget v1, Lcom/google/android/gms/internal/gtm/zzrc$zze;->zzbax:I

    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzrc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzsu;

    return-object v0
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/gtm/zzc$zza;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzc$zza;->zznv:Lcom/google/android/gms/internal/gtm/zzc$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/gtm/zzd;->zznq:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 21
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzc$zza;->zznw:Lcom/google/android/gms/internal/gtm/zzsu;

    if-nez p1, :cond_1

    .line 14
    const-class p2, Lcom/google/android/gms/internal/gtm/zzc$zza;

    monitor-enter p2

    .line 15
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzc$zza;->zznw:Lcom/google/android/gms/internal/gtm/zzsu;

    if-nez p1, :cond_0

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrc$zzb;

    sget-object p3, Lcom/google/android/gms/internal/gtm/zzc$zza;->zznv:Lcom/google/android/gms/internal/gtm/zzc$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/gtm/zzrc$zzb;-><init>(Lcom/google/android/gms/internal/gtm/zzrc;)V

    .line 18
    sput-object p1, Lcom/google/android/gms/internal/gtm/zzc$zza;->zznw:Lcom/google/android/gms/internal/gtm/zzsu;

    .line 19
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

    .line 11
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzc$zza;->zznv:Lcom/google/android/gms/internal/gtm/zzc$zza;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    .line 7
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zznr"

    aput-object v0, p1, p2

    const-string p2, "zzns"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzc$zza$zzb;->zzd()Lcom/google/android/gms/internal/gtm/zzrh;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zznt"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zznu"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u0004\u0001\u0003\u0004\u0002"

    .line 10
    sget-object p3, Lcom/google/android/gms/internal/gtm/zzc$zza;->zznv:Lcom/google/android/gms/internal/gtm/zzc$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/gtm/zzrc;->zza(Lcom/google/android/gms/internal/gtm/zzsk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzc$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzc$zza$zza;-><init>(Lcom/google/android/gms/internal/gtm/zzd;)V

    return-object p1

    .line 5
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzc$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzc$zza;-><init>()V

    return-object p1

    nop

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
