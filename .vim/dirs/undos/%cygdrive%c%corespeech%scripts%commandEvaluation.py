Vim�UnDo� �J(���b��n�L��_�[��p��=K.V��  %       �          	       	   	   	    Y�:�    _�                     {        ����                                                                                                                                                                                                                                                                                                                            {           �           ���    Y�:�     �   z   �  <                      #   9                # print("Slice summary: " + str(indices))   &                # if len(indices) > 1:   ^                #     for summary in recognition_blocks[int(min(indices)): int(max(indices))]:   �                #         print("Summary, result ID: " + str(summary["Result Id"]) + "\t" + str(summary["Field Type"]) + ":\t" + str(   -                #         summary["Tokens"]))                   # else:   (                #     index = indices[0]   (                #     if index - 1 >= 0:   t                #         print("Summary, result ID: " + str(recognition_blocks[index-1]["Result Id"]) + "\t" + str(   Y                #             recognition_blocks[index - 1]["Field Type"]) + ":\t" + str(   G                #             recognition_blocks[index - 1]["Tokens"]))                   #   Z                #     print("Summary, result ID: " + str(block["Result Id"]) + "\t" + str(   =                #         block["Field Type"]) + ":\t" + str(   +                #         block["Tokens"]))                   #   C                #     if index + 1 <= len(recognition_blocks ) - 1:   v                #         print("Summary, result ID: " + str(recognition_blocks[index + 1]["Result Id"]) + "\t" + str(   Y                #             recognition_blocks[index + 1]["Field Type"]) + ":\t" + str(   G                #             recognition_blocks[index + 1]["Tokens"]))                   #        5�_�                    {        ����                                                                                                                                                                                                                                                                                                                            {           �                   Y�:�     �   z   �  <                                                                                                       5�_�                    z   \    ����                                                                                                                                                                                                                                                                                                                            {           �                   Y�:�     �   x   z          :                            for rid, ft, tokens in states:5�_�                    z   \    ����                                                                                                                                                                                                                                                                                                                            {           �                   Y�:�     �   y   {  <      ^                                print("\t| " + str(ft) + ", " + str(rid) + "\t" + str(tokens))�   x   z          �                            for rid, ft, tokens in states:?!?jedi=0, ?!?                           (*_*param object*_*) ?!?jedi?!?5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            {           �                   Y�:�     �   �   �  <       5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            {           �                   Y�:�     �   �   �  <       5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            {           �                   Y�:�     �   �   �  <       5�_�      	              �        ����                                                                                                                                                                                                                                                                                                                            {           �                   Y�:�     �   y   {  )      ^                                print("\t| " + str(ft) + ", " + str(rid) + "\t" + str(tokens))    �   z   |  *           �   {   }  +           �   |   ~  ,           �   }     -           �   ~   �  .           �      �  /           �   �   �  0           �   �   �  1           �   �   �  2           �   �   �  3           �   �   �  4           �   �   �  5           �   �   �  6           �   �   �  7           �   �   �  8           �   �   �  9           �   �   �  :           �   �   �  ;           �   �   �  <           �   �   �  <           �   �   �  <           �   �   �  <           �   �   �  <       5�_�                  	   �        ����                                                                                                                                                                                                                                                                                                                            z   ^                          Y�:�    �   |   ~  &           �   }     '           �   ~   �  (           �      �  (       5��