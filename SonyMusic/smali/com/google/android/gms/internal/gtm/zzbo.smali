.class Lcom/google/android/gms/internal/gtm/zzbo;
.super Lcom/google/android/gms/internal/gtm/zzam;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/gtm/zzbn;",
        ">",
        "Lcom/google/android/gms/internal/gtm/zzam;"
    }
.end annotation


# instance fields
.field private zzyn:Lcom/google/android/gms/internal/gtm/zzbp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzbp<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzap;Lcom/google/android/gms/internal/gtm/zzbp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gtm/zzap;",
            "Lcom/google/android/gms/internal/gtm/zzbp<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzam;-><init>(Lcom/google/android/gms/internal/gtm/zzap;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbo;->zzyn:Lcom/google/android/gms/internal/gtm/zzbp;

    return-void
.end method

.method private final zza(Landroid/content/res/XmlResourceParser;)Lcom/google/android/gms/internal/gtm/zzbn;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            ")TT;"
        }
    .end annotation

    .line 8
    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 9
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 11
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 12
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screenname"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "name"

    .line 14
    invoke-interface {p1, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbo;->zzyn:Lcom/google/android/gms/internal/gtm/zzbp;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbp;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string v1, "string"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "name"

    .line 19
    invoke-interface {p1, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbo;->zzyn:Lcom/google/android/gms/internal/gtm/zzbp;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbp;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "bool"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "name"

    .line 24
    invoke-interface {p1, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v2, :cond_3

    .line 27
    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 28
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzbo;->zzyn:Lcom/google/android/gms/internal/gtm/zzbp;

    invoke-interface {v3, v0, v2}, Lcom/google/android/gms/internal/gtm/zzbp;->zza(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "Error parsing bool configuration value"

    .line 31
    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v1, "integer"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "name"

    .line 33
    invoke-interface {p1, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v2, :cond_3

    .line 36
    :try_start_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 37
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzbo;->zzyn:Lcom/google/android/gms/internal/gtm/zzbp;

    invoke-interface {v3, v0, v2}, Lcom/google/android/gms/internal/gtm/zzbp;->zzb(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    const-string v2, "Error parsing int configuration value"

    .line 40
    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    :cond_3
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    :goto_2
    const-string v0, "Error parsing tracker configuration file"

    .line 44
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbo;->zzyn:Lcom/google/android/gms/internal/gtm/zzbp;

    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzbp;->zzel()Lcom/google/android/gms/internal/gtm/zzbn;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zzq(I)Lcom/google/android/gms/internal/gtm/zzbn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcm()Lcom/google/android/gms/internal/gtm/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzap;->zzdc()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbo;->zza(Landroid/content/res/XmlResourceParser;)Lcom/google/android/gms/internal/gtm/zzbn;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "inflate() called with unknown resourceId"

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
