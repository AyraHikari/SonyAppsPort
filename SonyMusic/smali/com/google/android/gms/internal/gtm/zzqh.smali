.class final Lcom/google/android/gms/internal/gtm/zzqh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzsy;


# instance fields
.field private tag:I

.field private final zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

.field private zzawq:I

.field private zzawr:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/gtm/zzqe;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    const-string v0, "input"

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zzre;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzqe;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    iput-object p0, p1, Lcom/google/android/gms/internal/gtm/zzqe;->zzawi:Lcom/google/android/gms/internal/gtm/zzqh;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/gtm/zzqe;)Lcom/google/android/gms/internal/gtm/zzqh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqe;->zzawi:Lcom/google/android/gms/internal/gtm/zzqh;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzqh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzqh;-><init>(Lcom/google/android/gms/internal/gtm/zzqe;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/gtm/zzug;Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gtm/zzug;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/gtm/zzqp;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 715
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzqi;->zzaws:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 736
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 735
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznj()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 734
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznr()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 733
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznp()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 732
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznw()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 731
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznv()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 730
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznu()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 729
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    const/4 p1, 0x2

    .line 726
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 727
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzsw;->zzqs()Lcom/google/android/gms/internal/gtm/zzsw;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzsw;->zzi(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzsz;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzqh;->zzc(Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 724
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznk()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 723
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznl()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 722
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 721
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznm()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 720
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznn()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 719
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzns()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 718
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 717
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznq()Lcom/google/android/gms/internal/gtm/zzps;

    move-result-object p1

    return-object p1

    .line 716
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzno()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 403
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzrt;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 404
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrt;

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznq()Lcom/google/android/gms/internal/gtm/zzps;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrt;->zzc(Lcom/google/android/gms/internal/gtm/zzps;)V

    .line 406
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 408
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    .line 409
    iget p2, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, p2, :cond_0

    .line 410
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 413
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 416
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 417
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_2

    .line 418
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    .line 402
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    return-void
.end method

.method private final zzat(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1
.end method

.method private static zzau(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    .line 688
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpv()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p0

    throw p0
.end method

.method private static zzav(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    .line 738
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpv()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p0

    throw p0
.end method

.method private final zzaw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 741
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpp()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1
.end method

.method private final zzc(Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzsz<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzqp;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    iget v2, v1, Lcom/google/android/gms/internal/gtm/zzqe;->zzawf:I

    iget v3, v1, Lcom/google/android/gms/internal/gtm/zzqe;->zzawg:I

    if-ge v2, v3, :cond_0

    .line 54
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzaq(I)I

    move-result v0

    .line 55
    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzsz;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    iget v3, v2, Lcom/google/android/gms/internal/gtm/zzqe;->zzawf:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/gtm/zzqe;->zzawf:I

    .line 57
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/gtm/zzsz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzsy;Lcom/google/android/gms/internal/gtm/zzqp;)V

    .line 58
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/gtm/zzsz;->zzt(Ljava/lang/Object;)V

    .line 59
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzqe;->zzan(I)V

    .line 60
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    iget p2, p1, Lcom/google/android/gms/internal/gtm/zzqe;->zzawf:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzqe;->zzawf:I

    .line 61
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzar(I)V

    return-object v1

    .line 53
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpu()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1
.end method

.method private final zzd(Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzsz<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzqp;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawq:I

    .line 64
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    .line 67
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawq:I

    .line 68
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzsz;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 69
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/gtm/zzsz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzsy;Lcom/google/android/gms/internal/gtm/zzqp;)V

    .line 70
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/gtm/zzsz;->zzt(Ljava/lang/Object;)V

    .line 71
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    iget p2, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 74
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawq:I

    return-object v1

    .line 72
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpv()Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 76
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawq:I

    throw p1
.end method


# virtual methods
.method public final getTag()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    return v0
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 29
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->readFloat()F

    move-result v0

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 43
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readStringList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 395
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzsz<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzqp;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 47
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzqh;->zzc(Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzsz<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzqp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 426
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/gtm/zzqh;->zzc(Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 431
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_2
    :goto_0
    return-void

    .line 424
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    return-void
.end method

.method public final zza(Ljava/util/Map;Lcom/google/android/gms/internal/gtm/zzsd;Lcom/google/android/gms/internal/gtm/zzqp;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/gtm/zzsd<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/gtm/zzqp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 690
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 691
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    .line 692
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzaq(I)I

    move-result v0

    .line 693
    iget-object v1, p2, Lcom/google/android/gms/internal/gtm/zzsd;->zzbcq:Ljava/lang/Object;

    .line 694
    iget-object v2, p2, Lcom/google/android/gms/internal/gtm/zzsd;->zzbcs:Ljava/lang/Object;

    .line 695
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzog()I

    move-result v3

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_2

    .line 696
    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    packed-switch v3, :pswitch_data_0

    .line 704
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzoh()Z

    move-result v3

    goto :goto_1

    .line 700
    :pswitch_0
    iget-object v3, p2, Lcom/google/android/gms/internal/gtm/zzsd;->zzbcr:Lcom/google/android/gms/internal/gtm/zzug;

    iget-object v4, p2, Lcom/google/android/gms/internal/gtm/zzsd;->zzbcs:Ljava/lang/Object;

    .line 701
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 702
    invoke-direct {p0, v3, v4, p3}, Lcom/google/android/gms/internal/gtm/zzqh;->zza(Lcom/google/android/gms/internal/gtm/zzug;Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 698
    :pswitch_1
    iget-object v3, p2, Lcom/google/android/gms/internal/gtm/zzsd;->zzbcp:Lcom/google/android/gms/internal/gtm/zzug;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v4}, Lcom/google/android/gms/internal/gtm/zzqh;->zza(Lcom/google/android/gms/internal/gtm/zzug;Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_0

    goto :goto_0

    .line 705
    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/gtm/zzrk;

    const-string v4, "Unable to parse map entry."

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/google/android/gms/internal/gtm/zzrl; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzoh()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 709
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrk;

    const-string p2, "Unable to parse map entry."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    throw p1

    .line 711
    :cond_2
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 712
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzar(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 714
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzar(I)V

    throw p1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzsz<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzqp;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 49
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzqh;->zzd(Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/util/List;Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzsz<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzqp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 439
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/gtm/zzqh;->zzd(Lcom/google/android/gms/internal/gtm/zzsz;Lcom/google/android/gms/internal/gtm/zzqp;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 444
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :cond_2
    :goto_0
    return-void

    .line 437
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    return-void
.end method

.method public final zzg(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzqm;

    if-eqz v0, :cond_3

    .line 92
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzqm;

    .line 93
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 110
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    .line 97
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzau(I)V

    .line 98
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->readDouble()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzqm;->zzd(D)V

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_0

    return-void

    .line 102
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->readDouble()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gtm/zzqm;->zzd(D)V

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 106
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_1

    .line 107
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    .line 111
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    .line 128
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 114
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    .line 115
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzau(I)V

    .line 116
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_4

    return-void

    .line 120
    :cond_5
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 123
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 124
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_5

    .line 125
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zzh(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzqz;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 130
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzqz;

    .line 131
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzqz;->zzc(F)V

    .line 141
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    .line 144
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_0

    .line 145
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    .line 148
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 134
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    .line 135
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzav(I)V

    .line 136
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int v3, v1, p1

    .line 137
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzqz;->zzc(F)V

    .line 138
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 149
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 158
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 161
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 162
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_6

    .line 163
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    .line 166
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 152
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    .line 153
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzav(I)V

    .line 154
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    .line 155
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzi(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzry;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 168
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzry;

    .line 169
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 172
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    .line 173
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, p1

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznj()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    .line 175
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 176
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    .line 186
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznj()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    .line 179
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 181
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    .line 182
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_2

    .line 183
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    .line 187
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 190
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    .line 192
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznj()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 194
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    .line 204
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 196
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznj()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 199
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 200
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_7

    .line 201
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void
.end method

.method public final zzj(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzry;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 206
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzry;

    .line 207
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 210
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    .line 211
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, p1

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznk()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    .line 213
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 214
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    .line 224
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 216
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznk()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    .line 217
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 219
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    .line 220
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_2

    .line 221
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    .line 225
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 228
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    .line 229
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 232
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    .line 242
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 234
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznk()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 237
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 238
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_7

    .line 239
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void
.end method

.method public final zzk(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzrd;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 244
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrd;

    .line 245
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 248
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    .line 249
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, p1

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznl()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    .line 251
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 252
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    .line 262
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 254
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznl()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    .line 255
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 257
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    .line 258
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_2

    .line 259
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    .line 263
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 266
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    .line 267
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    .line 268
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 270
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    .line 280
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 272
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 275
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 276
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_7

    .line 277
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void
.end method

.method public final zzl(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzry;

    if-eqz v0, :cond_3

    .line 282
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzry;

    .line 283
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 300
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 286
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    .line 287
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzau(I)V

    .line 288
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznm()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    .line 290
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_0

    return-void

    .line 292
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznm()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    .line 293
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 296
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_1

    .line 297
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    .line 301
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    .line 318
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 304
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    .line 305
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzau(I)V

    .line 306
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    .line 307
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznm()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_4

    return-void

    .line 310
    :cond_5
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznm()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 313
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 314
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_5

    .line 315
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zzm(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzrd;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 320
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrd;

    .line 321
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 330
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznn()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    .line 331
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 333
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    .line 334
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_0

    .line 335
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    .line 338
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 324
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    .line 325
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzav(I)V

    .line 326
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int v3, v1, p1

    .line 327
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznn()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    .line 328
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 339
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 348
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 351
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 352
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_6

    .line 353
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    .line 356
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 342
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    .line 343
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzav(I)V

    .line 344
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    .line 345
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzn(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzpq;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 358
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzpq;

    .line 359
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 362
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    .line 363
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, p1

    .line 364
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzno()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzpq;->addBoolean(Z)V

    .line 365
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 366
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    .line 376
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 368
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzno()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzpq;->addBoolean(Z)V

    .line 369
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 371
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    .line 372
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_2

    .line 373
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    .line 377
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 380
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    .line 381
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    .line 382
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzno()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 384
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    .line 394
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 386
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzno()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 389
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 390
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_7

    .line 391
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void
.end method

.method public final zznj()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznj()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zznk()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznk()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zznl()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznl()I

    move-result v0

    return v0
.end method

.method public final zznm()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznm()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zznn()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 39
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznn()I

    move-result v0

    return v0
.end method

.method public final zzno()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzno()Z

    move-result v0

    return v0
.end method

.method public final zznp()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 45
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zznq()Lcom/google/android/gms/internal/gtm/zzps;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 77
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznq()Lcom/google/android/gms/internal/gtm/zzps;

    move-result-object v0

    return-object v0
.end method

.method public final zznr()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    return v0
.end method

.method public final zzns()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzns()I

    move-result v0

    return v0
.end method

.method public final zznt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 83
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznt()I

    move-result v0

    return v0
.end method

.method public final zznu()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 85
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznu()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zznv()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznv()I

    move-result v0

    return v0
.end method

.method public final zznw()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzat(I)V

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznw()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 397
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzog()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    if-eqz v0, :cond_0

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    .line 13
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawq:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final zzoh()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawq:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzao(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzp(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/gtm/zzps;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzqh;->zznq()Lcom/google/android/gms/internal/gtm/zzps;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 455
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_0

    .line 456
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    .line 450
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    return-void
.end method

.method public final zzq(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzrd;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 460
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrd;

    .line 461
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 464
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    .line 465
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, p1

    .line 466
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    .line 467
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 468
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    .line 478
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 470
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    .line 471
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 473
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    .line 474
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_2

    .line 475
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    .line 479
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 482
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    .line 483
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    .line 484
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 486
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    .line 496
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 488
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 491
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 492
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_7

    .line 493
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void
.end method

.method public final zzr(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzrd;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 498
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrd;

    .line 499
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 502
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    .line 503
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, p1

    .line 504
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzns()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    .line 505
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 506
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    .line 516
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 508
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzns()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    .line 509
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 511
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    .line 512
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_2

    .line 513
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    .line 517
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 520
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    .line 521
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    .line 522
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzns()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 524
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    .line 534
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 526
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzns()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 529
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 530
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_7

    .line 531
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void
.end method

.method public final zzs(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzrd;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 536
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrd;

    .line 537
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 546
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznt()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    .line 547
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 549
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    .line 550
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_0

    .line 551
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    .line 554
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 540
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    .line 541
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzav(I)V

    .line 542
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int v3, v1, p1

    .line 543
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznt()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    .line 544
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 555
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 564
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 567
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 568
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_6

    .line 569
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    .line 572
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 558
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    .line 559
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzav(I)V

    .line 560
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    .line 561
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzt(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzry;

    if-eqz v0, :cond_3

    .line 574
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzry;

    .line 575
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 592
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 578
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    .line 579
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzau(I)V

    .line 580
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznu()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    .line 582
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_0

    return-void

    .line 584
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznu()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    .line 585
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 587
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 588
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_1

    .line 589
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    .line 593
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    .line 610
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 596
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    .line 597
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzqh;->zzau(I)V

    .line 598
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    .line 599
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznu()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_4

    return-void

    .line 602
    :cond_5
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznu()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 605
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 606
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_5

    .line 607
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zzu(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzrd;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 612
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrd;

    .line 613
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 616
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    .line 617
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, p1

    .line 618
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznv()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    .line 619
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 620
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    .line 630
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 622
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznv()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzbm(I)V

    .line 623
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 625
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    .line 626
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_2

    .line 627
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    .line 631
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 634
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    .line 635
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    .line 636
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 638
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    .line 648
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 640
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 643
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 644
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_7

    .line 645
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void
.end method

.method public final zzv(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 649
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzry;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 650
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzry;

    .line 651
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 654
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result p1

    .line 655
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, p1

    .line 656
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznw()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    .line 657
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 658
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    .line 668
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 660
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznw()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzry;->zzaa(J)V

    .line 661
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 663
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result p1

    .line 664
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq p1, v1, :cond_2

    .line 665
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void

    .line 669
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 672
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznr()I

    move-result v0

    .line 673
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v1

    add-int/2addr v1, v0

    .line 674
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznw()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 676
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqh;->zzaw(I)V

    return-void

    .line 686
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrk;->zzpt()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    throw p1

    .line 678
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznw()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzny()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 681
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawp:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zzni()I

    move-result v0

    .line 682
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqh;->tag:I

    if-eq v0, v1, :cond_7

    .line 683
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqh;->zzawr:I

    return-void
.end method
