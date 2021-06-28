.class public abstract Lcom/google/android/gms/internal/gtm/zzrc;
.super Lcom/google/android/gms/internal/gtm/zzpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gtm/zzrc$zzb;,
        Lcom/google/android/gms/internal/gtm/zzrc$zzd;,
        Lcom/google/android/gms/internal/gtm/zzrc$zzc;,
        Lcom/google/android/gms/internal/gtm/zzrc$zza;,
        Lcom/google/android/gms/internal/gtm/zzrc$zze;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/gtm/zzrc<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/gtm/zzrc$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/gtm/zzpl<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzbam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/gtm/zzrc<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzbak:Lcom/google/android/gms/internal/gtm/zzts;

.field private zzbal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzrc;->zzbam:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzpl;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzts;->zzrj()Lcom/google/android/gms/internal/gtm/zzts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrc;->zzbak:Lcom/google/android/gms/internal/gtm/zzts;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzrc;->zzbal:I

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/gtm/zzrc;Lcom/google/android/gms/internal/gtm/zzqe;Lcom/google/android/gms/internal/gtm/zzqp;)Lcom/google/android/gms/internal/gtm/zzrc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/gtm/zzrc<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/gtm/zzqe;",
            "Lcom/google/android/gms/internal/gtm/zzqp;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzrk;
        }
    .end annotation

    .line 85
    sget v0, Lcom/google/android/gms/internal/gtm/zzrc$zze;->zzbau:I

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzrc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 87
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrc;

    .line 88
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzsw;->zzqs()Lcom/google/android/gms/internal/gtm/zzsw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzsw;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzsz;

    move-result-object v0

    .line 89
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzqh;->zza(Lcom/google/android/gms/internal/gtm/zzqe;)Lcom/google/android/gms/internal/gtm/zzqh;

    move-result-object p1

    .line 90
    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzsz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzsy;Lcom/google/android/gms/internal/gtm/zzqp;)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrc;->zzmi()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/gtm/zzrk;

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrk;

    throw p0

    .line 100
    :cond_0
    throw p0

    :catch_1
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/gtm/zzrk;

    if-eqz p2, :cond_1

    .line 95
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrk;

    throw p0

    .line 96
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/gtm/zzrk;->zzg(Lcom/google/android/gms/internal/gtm/zzsk;)Lcom/google/android/gms/internal/gtm/zzrk;

    move-result-object p0

    throw p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/gtm/zzsk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 59
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzsx;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzsx;-><init>(Lcom/google/android/gms/internal/gtm/zzsk;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs zza(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 64
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 66
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 67
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 65
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 62
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzrc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/gtm/zzrc<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrc;->zzbam:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final zza(Lcom/google/android/gms/internal/gtm/zzrc;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/gtm/zzrc<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 69
    sget v0, Lcom/google/android/gms/internal/gtm/zzrc$zze;->zzbar:I

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzrc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 77
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzsw;->zzqs()Lcom/google/android/gms/internal/gtm/zzsw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzsw;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzsz;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/gtm/zzsz;->zzae(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    .line 79
    sget p1, Lcom/google/android/gms/internal/gtm/zzrc$zze;->zzbas:I

    if-eqz v0, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 82
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/gtm/zzrc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method static zzg(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzrc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/gtm/zzrc<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrc;->zzbam:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrc;

    if-nez v0, :cond_0

    .line 42
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrc;->zzbam:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrc;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 48
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zztx;->zzk(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrc;

    .line 49
    sget v1, Lcom/google/android/gms/internal/gtm/zzrc$zze;->zzbaw:I

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzrc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrc;

    if-eqz v0, :cond_1

    .line 55
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzrc;->zzbam:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected static zzpf()Lcom/google/android/gms/internal/gtm/zzri;
    .locals 1

    .line 84
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrd;->zzpo()Lcom/google/android/gms/internal/gtm/zzrd;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 12
    :cond_0
    sget v0, Lcom/google/android/gms/internal/gtm/zzrc$zze;->zzbaw:I

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzrc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrc;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 17
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzsw;->zzqs()Lcom/google/android/gms/internal/gtm/zzsw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzsw;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzsz;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzrc;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzsz;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzpl;->zzavp:I

    if-eqz v0, :cond_0

    return v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzsw;->zzqs()Lcom/google/android/gms/internal/gtm/zzsw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzsw;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzsz;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/gtm/zzsz;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzpl;->zzavp:I

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzpl;->zzavp:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/gtm/zzrc;->zza(Lcom/google/android/gms/internal/gtm/zzrc;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zza(Lcom/google/android/gms/internal/gtm/zzsk;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final zzag(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzrc;->zzbal:I

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/gtm/zzqj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzsw;->zzqs()Lcom/google/android/gms/internal/gtm/zzsw;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzsw;->zzi(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzsz;

    move-result-object v0

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzql;->zza(Lcom/google/android/gms/internal/gtm/zzqj;)Lcom/google/android/gms/internal/gtm/zzql;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzsz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzum;)V

    return-void
.end method

.method protected final zzmi()V
    .locals 1

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzsw;->zzqs()Lcom/google/android/gms/internal/gtm/zzsw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzsw;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzsz;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/gtm/zzsz;->zzt(Ljava/lang/Object;)V

    return-void
.end method

.method final zzmw()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzrc;->zzbal:I

    return v0
.end method

.method public final zzpd()Lcom/google/android/gms/internal/gtm/zzrc$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 21
    sget v0, Lcom/google/android/gms/internal/gtm/zzrc$zze;->zzbav:I

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzrc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrc$zza;

    .line 24
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzrc$zza;->zza(Lcom/google/android/gms/internal/gtm/zzrc;)Lcom/google/android/gms/internal/gtm/zzrc$zza;

    return-object v0
.end method

.method public final zzpe()I
    .locals 2

    .line 35
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzrc;->zzbal:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzsw;->zzqs()Lcom/google/android/gms/internal/gtm/zzsw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzsw;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzsz;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/gtm/zzsz;->zzad(Ljava/lang/Object;)I

    move-result v0

    .line 38
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzrc;->zzbal:I

    .line 39
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzrc;->zzbal:I

    return v0
.end method

.method public final synthetic zzpg()Lcom/google/android/gms/internal/gtm/zzsl;
    .locals 2

    .line 103
    sget v0, Lcom/google/android/gms/internal/gtm/zzrc$zze;->zzbav:I

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzrc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrc$zza;

    .line 106
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzrc$zza;->zza(Lcom/google/android/gms/internal/gtm/zzrc;)Lcom/google/android/gms/internal/gtm/zzrc$zza;

    return-object v0
.end method

.method public final synthetic zzph()Lcom/google/android/gms/internal/gtm/zzsl;
    .locals 2

    .line 110
    sget v0, Lcom/google/android/gms/internal/gtm/zzrc$zze;->zzbav:I

    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzrc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrc$zza;

    return-object v0
.end method

.method public final synthetic zzpi()Lcom/google/android/gms/internal/gtm/zzsk;
    .locals 2

    .line 115
    sget v0, Lcom/google/android/gms/internal/gtm/zzrc$zze;->zzbaw:I

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzrc;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrc;

    return-object v0
.end method
