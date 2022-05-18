.class final Lcom/google/android/gms/tagmanager/zzgi;
.super Ljava/lang/Number;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/tagmanager/zzgi;",
        ">;"
    }
.end annotation


# instance fields
.field private zzall:D

.field private zzalm:J

.field private zzaln:Z


# direct methods
.method private constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzgi;->zzall:D

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/tagmanager/zzgi;->zzaln:Z

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzgi;->zzalm:J

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/tagmanager/zzgi;->zzaln:Z

    return-void
.end method

.method public static zza(Ljava/lang/Double;)Lcom/google/android/gms/tagmanager/zzgi;
    .locals 3

    .line 9
    new-instance v0, Lcom/google/android/gms/tagmanager/zzgi;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzgi;-><init>(D)V

    return-object v0
.end method

.method public static zzbo(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzgi;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 11
    :try_start_0
    new-instance v0, Lcom/google/android/gms/tagmanager/zzgi;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzgi;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 13
    :catch_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/tagmanager/zzgi;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzgi;-><init>(D)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 15
    :catch_1
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " is not a valid TypedNumber"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzm(J)Lcom/google/android/gms/tagmanager/zzgi;
    .locals 1

    .line 10
    new-instance v0, Lcom/google/android/gms/tagmanager/zzgi;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/zzgi;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public final byteValue()B
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzgi;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-byte v0, v1

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 49
    check-cast p1, Lcom/google/android/gms/tagmanager/zzgi;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzgi;->zza(Lcom/google/android/gms/tagmanager/zzgi;)I

    move-result p1

    return p1
.end method

.method public final doubleValue()D
    .locals 2

    .line 34
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzgi;->zzaln:Z

    if-eqz v0, :cond_0

    .line 35
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzgi;->zzalm:J

    long-to-double v0, v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzgi;->zzall:D

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 19
    instance-of v0, p1, Lcom/google/android/gms/tagmanager/zzgi;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/tagmanager/zzgi;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzgi;->zza(Lcom/google/android/gms/tagmanager/zzgi;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final floatValue()F
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzgi;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 20
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzgi;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public final intValue()I
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzgi;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final longValue()J
    .locals 2

    .line 39
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzgi;->zzaln:Z

    if-eqz v0, :cond_0

    .line 40
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzgi;->zzalm:J

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzgi;->zzall:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public final shortValue()S
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzgi;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzgi;->zzaln:Z

    if-eqz v0, :cond_0

    .line 18
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzgi;->zzalm:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzgi;->zzall:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/tagmanager/zzgi;)I
    .locals 4

    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzgi;->zzaln:Z

    if-eqz v0, :cond_0

    .line 24
    iget-boolean v0, p1, Lcom/google/android/gms/tagmanager/zzgi;->zzaln:Z

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzgi;->zzalm:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iget-wide v1, p1, Lcom/google/android/gms/tagmanager/zzgi;->zzalm:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzgi;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzgi;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public final zzju()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzgi;->zzaln:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzjv()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzgi;->zzaln:Z

    return v0
.end method
