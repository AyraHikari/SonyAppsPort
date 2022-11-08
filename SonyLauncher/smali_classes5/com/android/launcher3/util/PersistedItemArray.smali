.class public Lcom/android/launcher3/util/PersistedItemArray;
.super Ljava/lang/Object;
.source "PersistedItemArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/model/data/ItemInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PersistedItemArray"

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_ROOT:Ljava/lang/String; = "items"


# instance fields
.field private final mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 62
    .local p0, "this":Lcom/android/launcher3/util/PersistedItemArray;, "Lcom/android/launcher3/util/PersistedItemArray<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/PersistedItemArray;->mFileName:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public getFile(Landroid/content/Context;)Landroid/util/AtomicFile;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 170
    .local p0, "this":Lcom/android/launcher3/util/PersistedItemArray;, "Lcom/android/launcher3/util/PersistedItemArray<TT;>;"
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/launcher3/util/PersistedItemArray;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public read(Landroid/content/Context;Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/util/PersistedItemArray$ItemFactory<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lcom/android/launcher3/util/PersistedItemArray;, "Lcom/android/launcher3/util/PersistedItemArray<TT;>;"
    .local p2, "factory":Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;, "Lcom/android/launcher3/util/PersistedItemArray$ItemFactory<TT;>;"
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/util/PersistedItemArray$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/launcher3/util/PersistedItemArray$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/pm/UserCache;)V

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/launcher3/util/PersistedItemArray;->read(Landroid/content/Context;Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;Ljava/util/function/LongFunction;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public read(Landroid/content/Context;Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;Ljava/util/function/LongFunction;)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/util/PersistedItemArray$ItemFactory<",
            "TT;>;",
            "Ljava/util/function/LongFunction<",
            "Landroid/os/UserHandle;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lcom/android/launcher3/util/PersistedItemArray;, "Lcom/android/launcher3/util/PersistedItemArray<TT;>;"
    .local p2, "factory":Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;, "Lcom/android/launcher3/util/PersistedItemArray$ItemFactory<TT;>;"
    .local p3, "userFn":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<Landroid/os/UserHandle;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/PersistedItemArray;->getFile(Landroid/content/Context;)Landroid/util/AtomicFile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 128
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 130
    const-string v3, "items"

    invoke-static {v2, v3}, Lcom/android/launcher3/AutoInstallsLayout;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 131
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 134
    .local v3, "depth":I
    :cond_0
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    .line 135
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v3, :cond_4

    :cond_1
    const/4 v4, 0x1

    if-eq v5, v4, :cond_4

    .line 136
    const/4 v4, 0x2

    if-ne v5, v4, :cond_0

    const-string v4, "entry"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_2

    .line 137
    goto :goto_0

    .line 140
    :cond_2
    :try_start_2
    const-string v4, "itemType"

    .line 141
    const/4 v6, 0x0

    invoke-interface {v2, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 142
    .local v4, "itemType":I
    const-string v7, "profileId"

    .line 143
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 142
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-interface {p3, v7, v8}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    .line 144
    .local v7, "user":Landroid/os/UserHandle;
    const-string v8, "intent"

    .line 145
    invoke-interface {v2, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 144
    invoke-static {v6, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    .line 147
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    .line 148
    invoke-interface {p2, v4, v7, v6}, Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;->createInfo(ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v8

    .line 149
    .local v8, "item":Lcom/android/launcher3/model/data/ItemInfo;, "TT;"
    if-eqz v8, :cond_3

    .line 150
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 153
    .end local v4    # "itemType":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "user":Landroid/os/UserHandle;
    .end local v8    # "item":Lcom/android/launcher3/model/data/ItemInfo;, "TT;"
    :catch_0
    move-exception v4

    .line 155
    :cond_3
    :goto_1
    goto :goto_0

    .line 157
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "depth":I
    .end local v5    # "type":I
    :cond_4
    if-eqz v1, :cond_6

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 126
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local p0    # "this":Lcom/android/launcher3/util/PersistedItemArray;, "Lcom/android/launcher3/util/PersistedItemArray<TT;>;"
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "factory":Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;, "Lcom/android/launcher3/util/PersistedItemArray$ItemFactory<TT;>;"
    .end local p3    # "userFn":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<Landroid/os/UserHandle;>;"
    :cond_5
    :goto_2
    throw v2
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1

    .line 159
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local p0    # "this":Lcom/android/launcher3/util/PersistedItemArray;, "Lcom/android/launcher3/util/PersistedItemArray<TT;>;"
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "factory":Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;, "Lcom/android/launcher3/util/PersistedItemArray$ItemFactory<TT;>;"
    .restart local p3    # "userFn":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<Landroid/os/UserHandle;>;"
    :catch_1
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read items in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/util/PersistedItemArray;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PersistedItemArray"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 157
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 162
    :cond_6
    :goto_3
    nop

    .line 163
    return-object v0
.end method

.method public write(Landroid/content/Context;Ljava/util/List;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/android/launcher3/util/PersistedItemArray;, "Lcom/android/launcher3/util/PersistedItemArray<TT;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object/from16 v1, p0

    const-string v0, "entry"

    const-string v2, "items"

    const-string v3, "Unable to persist items in "

    const-string v4, "PersistedItemArray"

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/util/PersistedItemArray;->getFile(Landroid/content/Context;)Landroid/util/AtomicFile;

    move-result-object v5

    .line 74
    .local v5, "file":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    .local v6, "fos":Ljava/io/FileOutputStream;
    nop

    .line 80
    sget-object v7, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    move-object/from16 v8, p1

    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/pm/UserCache;

    .line 83
    .local v7, "userCache":Lcom/android/launcher3/pm/UserCache;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v9

    .line 84
    .local v9, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v6, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 85
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 86
    invoke-interface {v9, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    .line 88
    .local v12, "item":Lcom/android/launcher3/model/data/ItemInfo;, "TT;"
    invoke-virtual {v12}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 89
    .local v13, "intent":Landroid/content/Intent;
    if-nez v13, :cond_0

    .line 90
    goto :goto_0

    .line 93
    :cond_0
    invoke-interface {v9, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    const-string v14, "itemType"

    iget v15, v12, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    const-string v14, "profileId"

    iget-object v15, v12, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 96
    invoke-virtual {v7, v15}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    .line 95
    invoke-interface {v9, v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    const-string v14, "intent"

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    invoke-interface {v9, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    nop

    .end local v12    # "item":Lcom/android/launcher3/model/data/ItemInfo;, "TT;"
    .end local v13    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 100
    :cond_1
    invoke-interface {v9, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    .end local v9    # "out":Lorg/xmlpull/v1/XmlSerializer;
    nop

    .line 108
    invoke-virtual {v5, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 109
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v5, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher3/util/PersistedItemArray;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    return-void

    .line 75
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "userCache":Lcom/android/launcher3/pm/UserCache;
    :catch_1
    move-exception v0

    move-object/from16 v8, p1

    move-object v2, v0

    move-object v0, v2

    .line 76
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher3/util/PersistedItemArray;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    return-void
.end method
