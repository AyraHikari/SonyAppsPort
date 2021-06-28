.class public final Lcom/google/android/gms/internal/gtm/zzc$zzd;
.super Lcom/google/android/gms/internal/gtm/zzrc;

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzsm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gtm/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gtm/zzc$zzd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzrc<",
        "Lcom/google/android/gms/internal/gtm/zzc$zzd;",
        "Lcom/google/android/gms/internal/gtm/zzc$zzd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzsm;"
    }
.end annotation


# static fields
.field private static volatile zznw:Lcom/google/android/gms/internal/gtm/zzsu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzsu<",
            "Lcom/google/android/gms/internal/gtm/zzc$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzos:Lcom/google/android/gms/internal/gtm/zzc$zzd;


# instance fields
.field private zznr:I

.field private zzoi:B

.field private zzoq:I

.field private zzor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzc$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzc$zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzc$zzd;->zzos:Lcom/google/android/gms/internal/gtm/zzc$zzd;

    .line 33
    const-class v0, Lcom/google/android/gms/internal/gtm/zzc$zzd;

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzc$zzd;->zzos:Lcom/google/android/gms/internal/gtm/zzc$zzd;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzrc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzrc;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzc$zzd;->zzoi:B

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/gtm/zzsu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/gtm/zzsu<",
            "Lcom/google/android/gms/internal/gtm/zzc$zzd;",
            ">;"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzc$zzd;->zzos:Lcom/google/android/gms/internal/gtm/zzc$zzd;

    .line 27
    sget v1, Lcom/google/android/gms/internal/gtm/zzrc$zze;->zzbax:I

    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzrc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzsu;

    return-object v0
.end method

.method static synthetic zzm()Lcom/google/android/gms/internal/gtm/zzc$zzd;
    .locals 1

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzc$zzd;->zzos:Lcom/google/android/gms/internal/gtm/zzc$zzd;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzc$zzd;->zzor:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 6
    sget-object p3, Lcom/google/android/gms/internal/gtm/zzd;->zznq:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    int-to-byte p1, p3

    .line 23
    iput-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzc$zzd;->zzoi:B

    return-object v1

    .line 22
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzc$zzd;->zzoi:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzc$zzd;->zznw:Lcom/google/android/gms/internal/gtm/zzsu;

    if-nez p1, :cond_2

    .line 15
    const-class p2, Lcom/google/android/gms/internal/gtm/zzc$zzd;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzc$zzd;->zznw:Lcom/google/android/gms/internal/gtm/zzsu;

    if-nez p1, :cond_1

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrc$zzb;

    sget-object p3, Lcom/google/android/gms/internal/gtm/zzc$zzd;->zzos:Lcom/google/android/gms/internal/gtm/zzc$zzd;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/gtm/zzrc$zzb;-><init>(Lcom/google/android/gms/internal/gtm/zzrc;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/gtm/zzc$zzd;->zznw:Lcom/google/android/gms/internal/gtm/zzsu;

    .line 20
    :cond_1
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-object p1

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzc$zzd;->zzos:Lcom/google/android/gms/internal/gtm/zzc$zzd;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zznr"

    aput-object p2, p1, p3

    const-string p2, "zzoq"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzor"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001\u0504\u0000\u0002\u0504\u0001"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/gtm/zzc$zzd;->zzos:Lcom/google/android/gms/internal/gtm/zzc$zzd;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/gtm/zzrc;->zza(Lcom/google/android/gms/internal/gtm/zzsk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzc$zzd$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/gtm/zzc$zzd$zza;-><init>(Lcom/google/android/gms/internal/gtm/zzd;)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzc$zzd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzc$zzd;-><init>()V

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

.method public final zzl()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzc$zzd;->zzoq:I

    return v0
.end method
