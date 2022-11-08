.class public Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;
.super Ljava/lang/Object;
.source "PackageValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;,
        Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mValidAppsAndCertificates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mValidDefaultCertificates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;->mValidAppsAndCertificates:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;->mValidDefaultCertificates:Ljava/util/Map;

    .line 86
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f130000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;->readValidCertificates(Landroid/content/res/XmlResourceParser;)V

    return-void
.end method

.method private addCallerInfoToMap(Ljava/util/Map;Ljava/lang/String;Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;",
            ")V"
        }
    .end annotation

    .line 128
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_0
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private findCallerInfo(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;"
        }
    .end annotation

    .line 230
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 231
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    if-nez p4, :cond_0

    const/4 p2, 0x0

    .line 233
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;

    return-object p1

    .line 235
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;

    .line 236
    iget-object p4, p2, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private readValidCertificates(Landroid/content/res/XmlResourceParser;)V
    .locals 9

    .line 93
    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 96
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "signing_certificate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "name"

    const/4 v2, 0x0

    .line 98
    invoke-interface {p1, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "package"

    .line 99
    invoke-interface {p1, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "release"

    const/4 v5, 0x0

    .line 100
    invoke-interface {p1, v2, v3, v5}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    const-string v3, "storage_permission_check"

    .line 101
    invoke-interface {p1, v2, v3, v1}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    const-string v3, "full_library_browse_allowed"

    .line 103
    invoke-interface {p1, v2, v3, v1}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 105
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s|\\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    new-instance v2, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;

    move-object v3, v2

    move-object v5, v0

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;->mValidDefaultCertificates:Ljava/util/Map;

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;->addCallerInfoToMap(Ljava/util/Map;Ljava/lang/String;Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;)V

    goto :goto_1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;->mValidAppsAndCertificates:Ljava/util/Map;

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;->addCallerInfoToMap(Ljava/util/Map;Ljava/lang/String;Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;)V

    .line 116
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
    :cond_2
    :goto_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 119
    :goto_3
    :try_start_1
    sget-object v1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Could not read allowed callers from XML."

    invoke-virtual {v1, v2, v3, v0}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_4
    return-void

    .line 121
    :goto_5
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 122
    throw v0

    return-void
.end method


# virtual methods
.method public isCallerAllowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;
    .locals 3

    .line 148
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    const/16 v0, 0x3e8

    if-eq v0, p3, :cond_6

    .line 149
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne v0, p3, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 p3, 0x40

    const/4 v0, 0x0

    .line 155
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p3, p1

    if-eq p3, v1, :cond_2

    .line 167
    new-instance p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;

    invoke-direct {p1, v0, v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;-><init>(ZZ)V

    return-object p1

    .line 170
    :cond_2
    aget-object p1, p1, v0

    .line 171
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    const/4 p3, 0x2

    .line 170
    invoke-static {p1, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 176
    iget-object p3, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;->mValidAppsAndCertificates:Ljava/util/Map;

    invoke-direct {p0, p3, p1, p2, v1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;->findCallerInfo(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;

    move-result-object p3

    if-nez p3, :cond_3

    .line 178
    iget-object p3, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;->mValidDefaultCertificates:Ljava/util/Map;

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;->findCallerInfo(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;

    move-result-object p3

    :cond_3
    if-nez p3, :cond_4

    .line 187
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;->mValidAppsAndCertificates:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 195
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;->mValidDefaultCertificates:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 202
    new-instance p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;

    invoke-direct {p1, v0, v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;-><init>(ZZ)V

    return-object p1

    .line 206
    :cond_4
    iget-boolean p1, p3, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;->checkStoragePermission:Z

    if-eqz p1, :cond_5

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p1, v2, :cond_5

    .line 207
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 208
    invoke-static {p1, p2, v2}, Lcom/sonyericsson/music/common/PermissionUtils;->isPermissionGrantedForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 214
    new-instance p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;

    invoke-direct {p1, v0, v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;-><init>(ZZ)V

    return-object p1

    .line 225
    :cond_5
    new-instance p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;

    iget-boolean p2, p3, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;->fullLibraryBrowseAllowed:Z

    invoke-direct {p1, v1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;-><init>(ZZ)V

    return-object p1

    .line 161
    :catch_0
    new-instance p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;

    invoke-direct {p1, v0, v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;-><init>(ZZ)V

    return-object p1

    .line 150
    :cond_6
    :goto_0
    new-instance p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;

    invoke-direct {p1, v1, v1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;-><init>(ZZ)V

    return-object p1
.end method
