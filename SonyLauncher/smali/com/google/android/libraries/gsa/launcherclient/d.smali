.class final Lcom/google/android/libraries/gsa/launcherclient/d;
.super Ljava/lang/Object;
.source "EventLogArray.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[Lcom/google/android/libraries/gsa/launcherclient/e;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->a:Ljava/lang/String;

    .line 3
    new-array p1, p2, [Lcom/google/android/libraries/gsa/launcherclient/e;

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->b:[Lcom/google/android/libraries/gsa/launcherclient/e;

    .line 4
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->c:I

    .line 5
    return-void
.end method

.method private final a(ILjava/lang/String;F)V
    .locals 4

    .line 14
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->c:I

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->b:[Lcom/google/android/libraries/gsa/launcherclient/e;

    array-length v2, v1

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    array-length v3, v1

    rem-int/2addr v2, v3

    .line 15
    array-length v3, v1

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x2

    array-length v3, v1

    rem-int/2addr v0, v3

    .line 16
    aget-object v1, v1, v2

    invoke-static {v1, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Lcom/google/android/libraries/gsa/launcherclient/e;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->b:[Lcom/google/android/libraries/gsa/launcherclient/e;

    aget-object v1, v1, v0

    invoke-static {v1, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Lcom/google/android/libraries/gsa/launcherclient/e;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->b:[Lcom/google/android/libraries/gsa/launcherclient/e;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(ILjava/lang/String;F)V

    .line 18
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->b:[Lcom/google/android/libraries/gsa/launcherclient/e;

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Lcom/google/android/libraries/gsa/launcherclient/e;)I

    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->b:[Lcom/google/android/libraries/gsa/launcherclient/e;

    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->c:I

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    .line 21
    new-instance v2, Lcom/google/android/libraries/gsa/launcherclient/e;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/libraries/gsa/launcherclient/e;-><init>(B)V

    aput-object v2, v0, v1

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->b:[Lcom/google/android/libraries/gsa/launcherclient/e;

    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->c:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(ILjava/lang/String;F)V

    .line 23
    iget p1, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->c:I

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->b:[Lcom/google/android/libraries/gsa/launcherclient/e;

    array-length p2, p2

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->c:I

    .line 24
    return-void
.end method

.method private static a(Lcom/google/android/libraries/gsa/launcherclient/e;ILjava/lang/String;)Z
    .locals 1

    .line 46
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/e;->d(Lcom/google/android/libraries/gsa/launcherclient/e;)I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/e;->c(Lcom/google/android/libraries/gsa/launcherclient/e;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 6
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(ILjava/lang/String;F)V

    .line 7
    return-void
.end method

.method public final a(Ljava/lang/String;F)V
    .locals 1

    .line 10
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(ILjava/lang/String;F)V

    .line 11
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    .line 8
    int-to-float p2, p2

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(ILjava/lang/String;F)V

    .line 9
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 7

    .line 25
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xf

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " event history:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "  HH:mm:ss.SSSZ  "

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 27
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 28
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->b:[Lcom/google/android/libraries/gsa/launcherclient/e;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 29
    iget v4, p0, Lcom/google/android/libraries/gsa/launcherclient/d;->c:I

    array-length v5, v3

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    array-length v5, v3

    rem-int/2addr v4, v5

    aget-object v3, v3, v4

    .line 30
    if-eqz v3, :cond_1

    .line 31
    invoke-static {v3}, Lcom/google/android/libraries/gsa/launcherclient/e;->b(Lcom/google/android/libraries/gsa/launcherclient/e;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/libraries/gsa/launcherclient/e;->c(Lcom/google/android/libraries/gsa/launcherclient/e;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 33
    invoke-static {v3}, Lcom/google/android/libraries/gsa/launcherclient/e;->d(Lcom/google/android/libraries/gsa/launcherclient/e;)I

    move-result v5

    const-string v6, ": "

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 34
    :pswitch_0
    const-string v5, ": false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    goto :goto_1

    .line 36
    :pswitch_1
    const-string v5, ": true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    goto :goto_1

    .line 40
    :pswitch_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/google/android/libraries/gsa/launcherclient/e;->e(Lcom/google/android/libraries/gsa/launcherclient/e;)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 38
    :pswitch_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/google/android/libraries/gsa/launcherclient/e;->e(Lcom/google/android/libraries/gsa/launcherclient/e;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 39
    nop

    .line 41
    :goto_1
    invoke-static {v3}, Lcom/google/android/libraries/gsa/launcherclient/e;->f(Lcom/google/android/libraries/gsa/launcherclient/e;)I

    move-result v5

    if-lez v5, :cond_0

    .line 42
    const-string v5, " & "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/google/android/libraries/gsa/launcherclient/e;->f(Lcom/google/android/libraries/gsa/launcherclient/e;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " similar events"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_0
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 44
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    .line 12
    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(ILjava/lang/String;F)V

    .line 13
    return-void
.end method
