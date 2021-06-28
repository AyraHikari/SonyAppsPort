.class public final Lcom/google/android/gms/internal/measurement/zzcd$zzc;
.super Lcom/google/android/gms/internal/measurement/zzhv;
.source "com.google.android.gms:play-services-measurement@@17.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzji;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhv<",
        "Lcom/google/android/gms/internal/measurement/zzcd$zzc;",
        "Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzji;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/zzcd$zzc;

.field private static volatile zzj:Lcom/google/android/gms/internal/measurement/zzjp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjp<",
            "Lcom/google/android/gms/internal/measurement/zzcd$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/measurement/zzid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzid<",
            "Lcom/google/android/gms/internal/measurement/zzcd$zze;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:J

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;-><init>()V

    .line 76
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzi:Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    .line 77
    const-class v1, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhv;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhv;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhv;->zzbs()Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzid;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zze:Ljava/lang/String;

    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/measurement/zzcd$zze;)V
    .locals 1

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzl()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zza(J)V
    .locals 1

    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzc:I

    .line 37
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzf:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzm()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzb(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;ILcom/google/android/gms/internal/measurement/zzcd$zze;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zze;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;J)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zza(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Lcom/google/android/gms/internal/measurement/zzcd$zze;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/Iterable;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zza(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;)V
    .locals 1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzl()V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final zza(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/zzcd$zze;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzl()V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzgd;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzc:I

    .line 32
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zze:Ljava/lang/String;

    return-void
.end method

.method private final zzb(I)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzl()V

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private final zzb(J)V
    .locals 1

    .line 41
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzc:I

    .line 42
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzg:J

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc;J)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzb(J)V

    return-void
.end method

.method public static zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;
    .locals 1

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzi:Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhv;->zzbm()Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    return-object v0
.end method

.method static synthetic zzk()Lcom/google/android/gms/internal/measurement/zzcd$zzc;
    .locals 1

    .line 66
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzi:Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    return-object v0
.end method

.method private final zzl()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzid;

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzid;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhv;->zza(Lcom/google/android/gms/internal/measurement/zzid;)Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzid;

    :cond_0
    return-void
.end method

.method private final zzm()V
    .locals 1

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhv;->zzbs()Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzid;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    return-object p1
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 47
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzce;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 65
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 63
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 54
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzj:Lcom/google/android/gms/internal/measurement/zzjp;

    if-nez p1, :cond_1

    .line 56
    const-class p2, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    monitor-enter p2

    .line 57
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzj:Lcom/google/android/gms/internal/measurement/zzjp;

    if-nez p1, :cond_0

    .line 59
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhv$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzi:Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzhv$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzhv;)V

    .line 60
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzj:Lcom/google/android/gms/internal/measurement/zzjp;

    .line 61
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

    .line 53
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzi:Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    .line 50
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-class p3, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000\u0003\u1002\u0001\u0004\u1002\u0002\u0005\u1004\u0003"

    .line 52
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzi:Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzhv;->zza(Lcom/google/android/gms/internal/measurement/zzjg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzce;)V

    return-object p1

    .line 48
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;-><init>()V

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

.method public final zza()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzcd$zze;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzid;

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzid;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Z
    .locals 1

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzf:J

    return-wide v0
.end method

.method public final zzf()Z
    .locals 1

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzc:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzg:J

    return-wide v0
.end method

.method public final zzh()Z
    .locals 1

    .line 44
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzh:I

    return v0
.end method
