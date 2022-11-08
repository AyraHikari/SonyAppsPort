.class final Lcom/google/protobuf/ExtensionSchemaLite;
.super Lcom/google/protobuf/ExtensionSchema;
.source "ExtensionSchemaLite.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/ExtensionSchema<",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/protobuf/ExtensionSchema;-><init>()V

    return-void
.end method


# virtual methods
.method extensionNumber(Ljava/util/Map$Entry;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 293
    .local p1, "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    nop

    .line 294
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 295
    .local v0, "descriptor":Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    return v1
.end method

.method findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;
    .locals 1
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p2, "defaultInstance"    # Lcom/google/protobuf/MessageLite;
    .param p3, "number"    # I

    .line 504
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    return-object v0
.end method

.method getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .line 50
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    return-object v0
.end method

.method getMutableExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .line 60
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method hasExtensions(Lcom/google/protobuf/MessageLite;)Z
    .locals 1
    .param p1, "prototype"    # Lcom/google/protobuf/MessageLite;

    .line 45
    instance-of v0, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    return v0
.end method

.method makeImmutable(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/protobuf/ExtensionSchemaLite;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->makeImmutable()V

    .line 66
    return-void
.end method

.method parseExtension(Lcom/google/protobuf/Reader;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 6
    .param p1, "reader"    # Lcom/google/protobuf/Reader;
    .param p2, "extensionObject"    # Ljava/lang/Object;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Reader;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;TUB;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    .local p4, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    .local p5, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p6, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 79
    .local v0, "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v1

    .line 81
    .local v1, "fieldNumber":I
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const/4 v2, 0x0

    .line 83
    .local v2, "value":Ljava/lang/Object;
    sget-object v3, Lcom/google/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 190
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type cannot be packed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 191
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 177
    :pswitch_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1, v3}, Lcom/google/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 179
    iget-object v4, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 183
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v4

    .line 180
    invoke-static {v1, v3, v4, p5, p6}, Lcom/google/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/google/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p5

    .line 186
    move-object v2, v3

    .line 187
    goto/16 :goto_0

    .line 170
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1, v3}, Lcom/google/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    .line 172
    move-object v2, v3

    .line 173
    goto/16 :goto_0

    .line 163
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :pswitch_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1, v3}, Lcom/google/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    .line 165
    move-object v2, v3

    .line 166
    goto/16 :goto_0

    .line 156
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1, v3}, Lcom/google/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    .line 158
    move-object v2, v3

    .line 159
    goto/16 :goto_0

    .line 149
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :pswitch_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1, v3}, Lcom/google/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    .line 151
    move-object v2, v3

    .line 152
    goto :goto_0

    .line 142
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1, v3}, Lcom/google/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    .line 144
    move-object v2, v3

    .line 145
    goto :goto_0

    .line 135
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {p1, v3}, Lcom/google/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    .line 137
    move-object v2, v3

    .line 138
    goto :goto_0

    .line 128
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :pswitch_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1, v3}, Lcom/google/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    .line 130
    move-object v2, v3

    .line 131
    goto :goto_0

    .line 121
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1, v3}, Lcom/google/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    .line 123
    move-object v2, v3

    .line 124
    goto :goto_0

    .line 114
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :pswitch_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1, v3}, Lcom/google/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    .line 116
    move-object v2, v3

    .line 117
    goto :goto_0

    .line 107
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1, v3}, Lcom/google/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    .line 109
    move-object v2, v3

    .line 110
    goto :goto_0

    .line 100
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :pswitch_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1, v3}, Lcom/google/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    .line 102
    move-object v2, v3

    .line 103
    goto :goto_0

    .line 93
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :pswitch_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {p1, v3}, Lcom/google/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    .line 95
    move-object v2, v3

    .line 96
    goto :goto_0

    .line 86
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :pswitch_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {p1, v3}, Lcom/google/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    .line 88
    move-object v2, v3

    .line 89
    nop

    .line 193
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :goto_0
    iget-object v3, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4, v3, v2}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 194
    .end local v2    # "value":Ljava/lang/Object;
    goto/16 :goto_3

    .line 195
    :cond_0
    const/4 v2, 0x0

    .line 197
    .restart local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v3, v4, :cond_2

    .line 198
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readInt32()I

    move-result v3

    .line 199
    .local v3, "number":I
    iget-object v4, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v4

    .line 200
    .local v4, "enumValue":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 201
    invoke-static {v1, v3, p5, p6}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 206
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 207
    .end local v3    # "number":I
    .end local v4    # "enumValue":Ljava/lang/Object;
    goto/16 :goto_1

    .line 208
    :cond_2
    sget-object v3, Lcom/google/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_1

    .line 262
    :pswitch_e
    nop

    .line 264
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 263
    invoke-interface {p1, v3, p3}, Lcom/google/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    .line 265
    goto/16 :goto_1

    .line 256
    :pswitch_f
    nop

    .line 258
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 257
    invoke-interface {p1, v3, p3}, Lcom/google/protobuf/Reader;->readGroup(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    .line 259
    goto/16 :goto_1

    .line 253
    :pswitch_10
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readString()Ljava/lang/String;

    move-result-object v2

    .line 254
    goto/16 :goto_1

    .line 234
    :pswitch_11
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 235
    goto/16 :goto_1

    .line 268
    :pswitch_12
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Shouldn\'t reach here."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 249
    :pswitch_13
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readSInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 250
    goto/16 :goto_1

    .line 246
    :pswitch_14
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readSInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 247
    goto :goto_1

    .line 243
    :pswitch_15
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readSFixed64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 244
    goto :goto_1

    .line 240
    :pswitch_16
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readSFixed32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 241
    goto :goto_1

    .line 237
    :pswitch_17
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readUInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 238
    goto :goto_1

    .line 231
    :pswitch_18
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readBool()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 232
    goto :goto_1

    .line 228
    :pswitch_19
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readFixed32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 229
    goto :goto_1

    .line 225
    :pswitch_1a
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readFixed64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 226
    goto :goto_1

    .line 222
    :pswitch_1b
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 223
    goto :goto_1

    .line 219
    :pswitch_1c
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readUInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 220
    goto :goto_1

    .line 216
    :pswitch_1d
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 217
    goto :goto_1

    .line 213
    :pswitch_1e
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 214
    goto :goto_1

    .line 210
    :pswitch_1f
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 211
    nop

    .line 271
    :goto_1
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    iget-object v3, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4, v3, v2}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_3

    .line 274
    :cond_3
    sget-object v3, Lcom/google/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    goto :goto_2

    .line 277
    :pswitch_20
    iget-object v3, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4, v3}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v3

    .line 278
    .local v3, "oldValue":Ljava/lang/Object;
    if-eqz v3, :cond_4

    .line 279
    invoke-static {v3, v2}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 285
    .end local v3    # "oldValue":Ljava/lang/Object;
    :cond_4
    :goto_2
    iget-object v3, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4, v3, v2}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 288
    .end local v2    # "value":Ljava/lang/Object;
    :goto_3
    return-object p5

    :pswitch_data_0
    .packed-switch 0x1
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x11
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method parseLengthPrefixedMessageSetItem(Lcom/google/protobuf/Reader;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V
    .locals 3
    .param p1, "reader"    # Lcom/google/protobuf/Reader;
    .param p2, "extensionObject"    # Ljava/lang/Object;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Reader;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    .local p4, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 516
    .local v0, "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    nop

    .line 517
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1, v1, p3}, Lcom/google/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    .line 518
    .local v1, "value":Ljava/lang/Object;
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4, v2, v1}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 519
    return-void
.end method

.method parseMessageSetItem(Lcom/google/protobuf/ByteString;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)V
    .locals 5
    .param p1, "data"    # Lcom/google/protobuf/ByteString;
    .param p2, "extensionObject"    # Ljava/lang/Object;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    .local p4, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 530
    .local v0, "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/MessageLite$Builder;->buildPartial()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    .line 532
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/protobuf/BinaryReader;->newInstance(Ljava/nio/ByteBuffer;Z)Lcom/google/protobuf/BinaryReader;

    move-result-object v2

    .line 534
    .local v2, "reader":Lcom/google/protobuf/Reader;
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v3

    invoke-virtual {v3, v1, v2, p3}, Lcom/google/protobuf/Protobuf;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 535
    iget-object v3, v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4, v3, v1}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 537
    invoke-interface {v2}, Lcom/google/protobuf/Reader;->getFieldNumber()I

    move-result v3

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    .line 540
    return-void

    .line 538
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
.end method

.method serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V
    .locals 6
    .param p1, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Writer;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    .local p2, "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    nop

    .line 301
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 302
    .local v0, "descriptor":Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    sget-object v1, Lcom/google/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 424
    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 425
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 426
    nop

    .line 427
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v3

    .line 428
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 430
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v2

    .line 426
    invoke-static {v3, v4, p1, v2}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_0

    .line 412
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<*>;"
    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 413
    .restart local v1    # "data":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 414
    nop

    .line 415
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v3

    .line 416
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 418
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v2

    .line 414
    invoke-static {v3, v4, p1, v2}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    .line 421
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_0
    goto/16 :goto_0

    .line 407
    :pswitch_2
    nop

    .line 408
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 407
    invoke-static {v1, v2, p1}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    .line 409
    goto/16 :goto_0

    .line 361
    :pswitch_3
    nop

    .line 362
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 361
    invoke-static {v1, v2, p1}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    .line 363
    goto/16 :goto_0

    .line 400
    :pswitch_4
    nop

    .line 401
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 402
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 404
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 400
    invoke-static {v1, v2, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 405
    goto/16 :goto_0

    .line 393
    :pswitch_5
    nop

    .line 394
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 395
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 397
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 393
    invoke-static {v1, v2, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 398
    goto/16 :goto_0

    .line 386
    :pswitch_6
    nop

    .line 387
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 388
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 390
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 386
    invoke-static {v1, v2, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 391
    goto/16 :goto_0

    .line 379
    :pswitch_7
    nop

    .line 380
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 381
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 383
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 379
    invoke-static {v1, v2, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 384
    goto/16 :goto_0

    .line 372
    :pswitch_8
    nop

    .line 373
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 374
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 376
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 372
    invoke-static {v1, v2, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 377
    goto/16 :goto_0

    .line 365
    :pswitch_9
    nop

    .line 366
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 367
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 369
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 365
    invoke-static {v1, v2, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 370
    goto/16 :goto_0

    .line 354
    :pswitch_a
    nop

    .line 355
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 356
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 358
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 354
    invoke-static {v1, v2, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 359
    goto/16 :goto_0

    .line 347
    :pswitch_b
    nop

    .line 348
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 349
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 351
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 347
    invoke-static {v1, v2, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 352
    goto :goto_0

    .line 340
    :pswitch_c
    nop

    .line 341
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 342
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 344
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 340
    invoke-static {v1, v2, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 345
    goto :goto_0

    .line 333
    :pswitch_d
    nop

    .line 334
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 335
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 337
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 333
    invoke-static {v1, v2, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 338
    goto :goto_0

    .line 326
    :pswitch_e
    nop

    .line 327
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 328
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 330
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 326
    invoke-static {v1, v2, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 331
    goto :goto_0

    .line 319
    :pswitch_f
    nop

    .line 320
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 321
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 323
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 319
    invoke-static {v1, v2, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 324
    goto :goto_0

    .line 312
    :pswitch_10
    nop

    .line 313
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 314
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 316
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 312
    invoke-static {v1, v2, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 317
    goto :goto_0

    .line 305
    :pswitch_11
    nop

    .line 306
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 307
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 309
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 305
    invoke-static {v1, v2, p1, v3}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 310
    nop

    .line 433
    :cond_1
    :goto_0
    goto/16 :goto_1

    .line 436
    :cond_2
    sget-object v1, Lcom/google/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    .line 492
    :pswitch_12
    nop

    .line 493
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 494
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 495
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v3

    .line 492
    invoke-interface {p1, v1, v2, v3}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_1

    .line 486
    :pswitch_13
    nop

    .line 487
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 488
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 489
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v3

    .line 486
    invoke-interface {p1, v1, v2, v3}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    .line 490
    goto/16 :goto_1

    .line 483
    :pswitch_14
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 484
    goto/16 :goto_1

    .line 462
    :pswitch_15
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-interface {p1, v1, v2}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 463
    goto/16 :goto_1

    .line 480
    :pswitch_16
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    .line 481
    goto/16 :goto_1

    .line 477
    :pswitch_17
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    .line 478
    goto/16 :goto_1

    .line 474
    :pswitch_18
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    .line 475
    goto/16 :goto_1

    .line 471
    :pswitch_19
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    .line 472
    goto/16 :goto_1

    .line 468
    :pswitch_1a
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    .line 469
    goto/16 :goto_1

    .line 465
    :pswitch_1b
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    .line 466
    goto/16 :goto_1

    .line 459
    :pswitch_1c
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    .line 460
    goto/16 :goto_1

    .line 456
    :pswitch_1d
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    .line 457
    goto :goto_1

    .line 453
    :pswitch_1e
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    .line 454
    goto :goto_1

    .line 450
    :pswitch_1f
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    .line 451
    goto :goto_1

    .line 447
    :pswitch_20
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    .line 448
    goto :goto_1

    .line 444
    :pswitch_21
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    .line 445
    goto :goto_1

    .line 441
    :pswitch_22
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    .line 442
    goto :goto_1

    .line 438
    :pswitch_23
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    .line 439
    nop

    .line 499
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method setExtensions(Ljava/lang/Object;Lcom/google/protobuf/FieldSet;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    iput-object p2, v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    .line 56
    return-void
.end method
